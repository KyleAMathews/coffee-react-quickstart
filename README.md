Coffee React Quickstart
=======================

Quickstart for creating React.js web applications.

It has a number of nice goodies baked in including:

* Live reloading for both CSS *and* Javascript! This really speeds up development. Live reloading is powered by the [Webpack module bundler](http://webpack.github.io/) and [react-hot-loader](https://github.com/gaearon/react-hot-loader) projects.
* Write your JSX in Coffeescript thanks to [coffee-react-transform](https://github.com/jsdf/coffee-react-transform).
* Amazing URL-driven-development (UDD) with the [react-router project](https://github.com/rackt/react-router).
* Uses [Gulp](http://gulpjs.com/) for building CSS and Javascript. Run `gulp watch` for rebuilding css/js on the fly while developing and `gulp build` to create minified versions for deploying to production.
* Includes sensible element stylings and several useful Sass plugins:
  * <a href="http://susy.oddbird.net/">Susy</a>: best-of-breed grid system.
  * <a href="https://github.com/Team-Sass/modular-scale">modular-scale</a>: easily create pleasing modular type scales.
  * <a href="https://github.com/jhardy/Sassy-Buttons">Sassy Buttons</a>: flexible button styling.
  * <a href="http://breakpoint-sass.com/">Breakpoint</a>: Super simple media queries.

## Install dependencies

Clone this repo and then after entering the new directory run `npm install` and `bundle install`. This will install the respective NPM and Ruby Gem dependencies.

You'll also need to have gulp installed globally to run the coffeescript gulpfile: `npm install -g gulp`

## Development
Run in the root of your directory: `npm run watch`

This will watch the src directories and build on changes and placed the built css and js files in the public directory. It'll serve everything in the /public directory at localhost:8080

Then try editing `src/scripts/hello_world.cjsx` and see your changes magically show up in your browser with *no* page reload!

# Production build
To build for production, simply run `gulp build`

# Demo
Try out the example app included with this quickstart: http://kyleamathews.github.io/coffee-react-quickstart/


