# Load css first thing. It gets injected in the <head> in a <style> element.
require './public/main.css'

React = require 'react'
# Assign react to Window so the Chrome React Dev Tools will work as well
# so don't have to import react in every React component.
window.React = React

Route = require('react-router').Route

HelloWorld = require './lib/react_components/hello_world'
StyleGuide = require './lib/react_components/styleguide'
App = require './lib/react_components/app'

React.renderComponent((
  <Route handler={App}>
    <Route name="hello" handler={HelloWorld} path="/" />
    <Route name="styleguide" handler={StyleGuide} path="/styleguide" />
  </Route>
), document.body)
