var path = require('path');
var webpack = require('webpack');


module.exports = {
  entry: [
    "webpack-dev-server/client?http://localhost:8080",
    'webpack/hot/dev-server',
    './client'
  ],
	output: {
    path: path.join(__dirname, 'public'),
		filename: 'bundle.js',
    publicPath: '/public/'
	},
	resolveLoader: {
		modulesDirectories: ['..', 'node_modules']
	},
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ],
	resolve: {
		extensions: ['', '.js', '.cjsx', '.coffee']
	},
	module: {
		loaders: [
      { test: /\.css$/, loaders: ['style', 'css']},
      { test: /\.cjsx$/, loaders: ['react-hot', 'coffee-loader', 'cjsx-loader']},
      { test: /\.coffee$/, loader: 'coffee-loader' }
    ]
  }
};
