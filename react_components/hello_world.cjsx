# @cjsx React.DOM

React = require 'react'

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <h1>Hello world!</h1>
      <p>It should be a good party</p>
    </div>
