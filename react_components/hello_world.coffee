# @cjsx React.DOM

React = require 'react'

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <h1>Hello world!</h1>
