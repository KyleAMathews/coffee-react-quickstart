Coffee React Quickstart
=======================

Quickstart for creating React.js web applications.

It has a number of nice goodies baked in including:

* Live reloading for both CSS and Javascript! This really speeds up your development. Live reloading is powered by the [Webpack module bundler](http://webpack.github.io/) and the [react-hot-loader](https://github.com/gaearon/react-hot-loader) projects.
* Full JSX with Coffeescript support provided by [coffee-react-transform](https://github.com/jsdf/coffee-react-transform).
* Amazing URL-driven-development (UDD) with the [react-router project](https://github.com/rackt/react-router).
* Uses [Gulp](http://gulpjs.com/) for building CSS and Javascript. Run `cult watch` for rebuilding css/js on the fly while developing and `cult build` to create minified versions for deploying to production.
* Starter Sass project with sensible defaults.
* Uses the best-of-breed grid system [Susy](http://susy.oddbird.net/).

## Install dependencies

Clone this repo and then after entering the new directory run `npm install` and `bundle install`. This will install the respective NPM and Ruby Gem dependencies.

You'll also need to have cult/gulp installed globally to run the coffeescript gulpfile: `npm install -g gulp cult`

## Development
Run in the root of your directory: `cult watch`

This will watch the src directories and build on changes and placed the built css and js files in the public directory. It'll serve everything in the /public directory at localhost:8080

Then try editing `lib/react_components/hello_world.cjsx` and see your changes magically show up in your browser with *no* page reload!

# Building
To build for production, simply run `cult build`

# Demo
Try out the example app included with this quickstart: http://kyleamathews.github.io/coffee-react-quickstart/


