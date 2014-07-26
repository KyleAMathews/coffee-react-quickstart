Link = require('react-router').Link

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    <div>
      <h1>Hello world!</h1>
      <p>You're looking at the <a href="https://github.com/KyleAMathews/coffee-react-quickstart">Coffeescript React Quickstart</a> project by <a href="https://twitter.com/kylemathews">Kyle Mathews</a>.</p>
      <p>It has a number of nice goodies baked in including:</p>
      <ul>
        <li>Live reloading for both CSS <em>and</em> Javascript! This really speeds up your development. Live reloading is powered by the <a href="http://webpack.github.io/">Webpack module bundler</a> and the <a href="https://github.com/gaearon/react-hot-loader">react-hot-loader</a> projects.</li>
        <li>Full JSX with Coffeescript support provided by <a href="https://github.com/jsdf/coffee-react-transform">coffee-react-transform</a>.</li>
        <li>Amazing URL-driven-development (UDD) with the <a href="https://github.com/rackt/react-router">react-router project.</a></li>
        <li>Uses Gulp for building CSS and Javascript. Run <code>cult watch</code> for rebuilding css/js on the fly while developing and <code>cult build</code> to create minified versions for deploying to production.</li>
        <li>Starter Sass project with sensible defaults. See the <Link to="styleguide">styleguide page</Link> for more.</li>
        <li>Uses the best-of-breed grid system <a href="http://susy.oddbird.net/">Susy</a>.</li>
      </ul>
    </div>
