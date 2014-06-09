React = require 'react'

HelloWorld = require './react_components/hello_world'

# Assign react to Window so the Chrome React Dev Tools will work
window.React = React

React.renderComponent(HelloWorld(), document.body)
