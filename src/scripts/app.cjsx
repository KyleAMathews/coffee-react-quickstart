Link = require('react-router').Link

# Provides global navigation for app e.g. the "Hello | Styleguide" at the top.
module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <header><Link to="hello">Hello</Link> | <Link to="styleguide">Styleguide</Link></header>
      {@props.activeRouteHandler()}
    </div>
