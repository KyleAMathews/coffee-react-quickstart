Link = require('react-router').Link

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <h1>Hello world!</h1>
      <p>You're looking at the <a href="https://github.com/KyleAMathews/coffee-react-quickstart">Coffeescript React Quickstart</a> project by <a href="https://twitter.com/kylemathews">Kyle Mathews</a>.</p>
      <p>It has a number of nice goodies included like:</p>
      <ul>
        <li>Full Coffeescript support provided by <a href="https://github.com/jsdf/coffee-react-transform">coffee-react-transform</a></li>
        <li>Live reloading for both CSS <em>and</em> Javascript! This really speeds up your development. Live reload of Javascript enabled by the <a href="https://github.com/gaearon/react-hot-loader">react-hot-loader</a> project.</li>
        <li>Gulpfile with both development and production tasks to simplify building your project.</li>
        <li>Starter Sass project with sensible defaults. Check them out on the <Link to="styleguide">styleguide page</Link></li>
      </ul>
    </div>
