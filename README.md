coffee-react-quickstart
=======================

Quickstart for creating React.js web applications.

Includes:

* SASS project with basic styling for elements and typography
* Gulpfile for building css from Sass and javascript using Webpack

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


