gulp = require 'gulp'
gutil = require 'gulp-util'
connect = require 'gulp-connect'
webpack = require("webpack")
WebpackDevServer = require("webpack-dev-server")
webpackConfig = require("./webpack.config.js")

# Load plugins
$ = require('gulp-load-plugins')()

# CSS
gulp.task('css', ->
  gulp.src(['styles/*.sass', 'styles/*.scss'])
    .pipe($.compass({
      css: 'public/'
      sass: 'styles'
      image: 'styles/images'
      style: 'nested'
      comments: false
      bundle_exec: true
      time: true
      require: ['susy', 'modular-scale', 'normalize-scss', 'sass-css-importer', 'breakpoint']
    }))
    .on('error', (err) ->
      console.log err
    )
    .pipe($.size())
    .pipe(connect.reload())
)


gulp.task "webpack:build", (callback) ->

  # Modify some webpack config options.
  config = Object.create(webpackConfig)
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

  return


# Modify some webpack config options.
devConfig = Object.create(webpackConfig)
devConfig.devtool = "sourcemap"
devConfig.debug = true

# Create a single instance of the compiler to allow caching.
devCompiler = webpack(devConfig)
gulp.task "webpack:build-dev", (callback) ->

  # Run webpack.
  devCompiler.run (err, stats) ->
    throw new gutil.PluginError("webpack:build-dev", err)  if err
    gutil.log "[webpack:build-dev]", stats.toString(colors: true)
    gulp.src('public/bundle.js').pipe(connect.reload())
    callback()
    return

  return


# Comment out until can get working w/ hot js reload + css reload.
#gulp.task "webpack-dev-server", (callback) ->
  ## Modify some webpack config options.
  #config = Object.create(webpackConfig)
  #config.devtool = "eval"
  #config.debug = true

  ## Start a webpack-dev-server.
  #new WebpackDevServer(webpack(config),
    #contentBase: './public'
    #quiet: true
    #stats:
      #colors: true
  #).listen 8080, "localhost", (err) ->
    #throw new gutil.PluginError("webpack-dev-server", err) if err
    #gutil.log "[webpack-dev-server]", "http://localhost:8080/webpack-dev-server/index.html"
    #return

  #return

# Connect
gulp.task 'connect', -> connect.server({
  root: ['public']
  port: 9000,
  livereload: true,
  # uncomment for single-page web apps or to handle 404s:
  # fallback: 'public/index.html'
})

gulp.task 'default', ->
  gulp.start 'build'

gulp.task 'build', ['webpack:build', 'css']

gulp.task 'watch', ['css', 'connect', 'webpack:build-dev'], ->
  gulp.watch(['./styles/**'], ['css'])
  gulp.watch(['./react_components/**'], ['webpack:build-dev'])
