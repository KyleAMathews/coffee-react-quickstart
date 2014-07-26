# Load css first thing. It gets injected in the <head> in a <style> element.
require './public/main.css'

React = require 'react'
Route = require('react-router').Route

HelloWorld = require './lib/react_components/hello_world'
StyleGuide = require './lib/react_components/styleguide'
App = require './lib/react_components/app'

# Assign react to Window so the Chrome React Dev Tools will work
window.React = React

React.renderComponent((
  <Route handler={App}>
    <Route name="hello" handler={HelloWorld} path="/" />
    <Route name="styleguide" handler={StyleGuide} path="/styleguide" />
  </Route>
), document.body)
