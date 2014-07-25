# Load css first thing. It gets injected in the <head> in a <style> element.
require './public/main.css'

React = require 'react'

HelloWorld = require './lib/react_components/hello_world'

# Assign react to Window so the Chrome React Dev Tools will work
window.React = React

React.renderComponent(HelloWorld(), document.body)
