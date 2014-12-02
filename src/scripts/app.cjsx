Link = require('react-router').Link
RouteHandler = require('react-router').RouteHandler

# Provides global navigation for app e.g. the "Hello | Styleguide" at the top.
module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <header><Link to="hello">Hello</Link> | <Link to="styleguide">Styleguide</Link></header>
      <RouteHandler/>
    </div>
