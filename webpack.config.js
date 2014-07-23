var path = require('path');
var webpack = require('webpack');


module.exports = {
	entry: ['./client'],
	output: {
		path: path.join(__dirname, 'public'),
		filename: 'bundle.js'
	},
	resolveLoader: {
		modulesDirectories: ['..', 'node_modules']
	},
  plugins: [],
	resolve: {
		extensions: ['', '.js', '.cjsx', '.coffee']
	},
	module: {
		loaders: [
			{ test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']},
			{ test: /\.coffee$/, loader: 'coffee-loader' }
		]
	}
};
