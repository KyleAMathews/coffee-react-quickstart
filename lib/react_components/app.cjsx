Link = require('react-router').Link

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <header><Link to="hello">Hello</Link>{'  '}|{'  '}<Link to="styleguide">Styleguide</Link></header>
      {@props.activeRouteHandler()}
    </div>
