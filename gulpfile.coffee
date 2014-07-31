gulp = require 'gulp'
gutil = require 'gulp-util'
webpack = require("webpack")
WebpackDevServer = require("webpack-dev-server")
webpackConfig = require("./webpack.config.js")
map = require 'map-stream'
touch = require 'touch'
_ = require 'underscore'

# Load plugins
$ = require('gulp-load-plugins')()

# CSS
gulp.task('css', ->
  gulp.src(['src/styles/*.sass', 'src/styles/*.scss'])
    .pipe($.compass({
      css: 'public/'
      sass: 'src/styles'
      image: 'src/styles/images'
      style: 'nested'
      comments: false
      bundle_exec: true
      time: true
      require: [
        'susy',
        'modular-scale',
        'normalize-scss',
        'sass-css-importer',
        'sassy-buttons',
        'breakpoint']
    }))
    .on('error', (err) ->
      gutil.log err
    )
    .pipe($.size())
    .pipe(gulp.dest('public/'))
    .pipe(map((a, cb) ->
      if devServer.invalidate? then devServer.invalidate()
      cb()
    ))
)

gulp.task('copy-assets', ->
    gulp.src('assets/**')
      .pipe(gulp.dest('public'))
      .pipe($.size())
)

gulp.task "webpack:build", (callback) ->

  # Modify some webpack config options.
  config = _.extend {}, webpackConfig

  # Don't use react-hot-loader for the production build.
  config.entry = "./src/scripts/router"
  config.module.loaders[1] =
    { test: /\.cjsx$/, loaders: ['coffee', 'cjsx']}
  config.plugins = []

  config.plugins = config.plugins.concat(
    new webpack.DefinePlugin(
      # This has effect on the react lib size.
      "process.env": NODE_ENV: JSON.stringify("production")
  ),
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.UglifyJsPlugin()
  )

  # Run webpack.
  webpack config, (err, stats) ->
    throw new gutil.PluginError("webpack:build", err)  if err
    gutil.log "[webpack:build]", stats.toString(colors: true)
    callback()
    return

# Modify some webpack config options.
devConfig = _.extend {}, webpackConfig
devConfig.devtool = "sourcemap"
devConfig.debug = true

# Create a single instance of the compiler to allow caching.
devCompiler = webpack(devConfig)
gulp.task "webpack:build-dev", (callback) ->

  # Run webpack.
  devCompiler.run (err, stats) ->
    throw new gutil.PluginError("webpack:build-dev", err)  if err
    gutil.log "[webpack:build-dev]", stats.toString(colors: true)
    callback()
    return

  return

devServer = {}
gulp.task "webpack-dev-server", (callback) ->
  config = _.extend {}, webpackConfig

  # Ensure there's a `./public/main.css` file that can be required.
  touch.sync('./public/main.css')

  # Start a webpack-dev-server.
  devServer = new WebpackDevServer(webpack(config),
    contentBase: './public/'
    hot: true
    watchDelay: 100
    noInfo: true
  )
  devServer.listen 8080, "0.0.0.0", (err) ->
    throw new gutil.PluginError("webpack-dev-server", err) if err
    gutil.log "[webpack-dev-server]", "http://localhost:8080"
    callback()

  return

gulp.task 'default', ->
  gulp.start 'build'

gulp.task 'build', ['webpack:build', 'css', 'copy-assets']

gulp.task 'watch', ['css', 'copy-assets', 'webpack-dev-server'], ->
  gulp.watch(['src/styles/**'], ['css'])
  gulp.watch(['assets/**'], ['copy-assets'])
