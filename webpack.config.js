var path = require('path');
var webpack = require('webpack');


module.exports = {
  entry: [
    './src/scripts/router'
  ],
	output: {
    path: path.join(__dirname, 'public'),
		filename: 'bundle.js',
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
      { test: /\.cjsx$/, loaders: ['coffee', 'cjsx']},
      { test: /\.coffee$/, loader: 'coffee' }
    ]
  }
};
