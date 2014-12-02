Link = require('react-router').Link

module.exports = React.createClass
  displayName: 'HelloWorld'

  componentDidMount: ->
    window.scroll(0,0)

  render: ->
    <div>
      <h1>Hello world!</h1>
      <p>You're looking at the <a href="https://github.com/KyleAMathews/coffee-react-quickstart">Coffeescript React Quickstart</a> project by <a href="https://twitter.com/kylemathews">Kyle Mathews</a>.</p>
      <p>It has a number of nice goodies baked in including:</p>
      <ul>
        <li>Live reloading while developing for both CSS <em>and</em> Javascript! This really speeds up development. Live reloading is powered by the <a href="http://webpack.github.io/">Webpack module bundler</a> and <a href="https://github.com/gaearon/react-hot-loader">react-hot-loader</a> projects.</li>
        <li>Write your JSX in Coffeescript thanks to <a href="https://github.com/jsdf/coffee-react-transform">coffee-react-transform</a>.</li>
        <li>Amazing URL-driven-development (UDD) with the <a href="https://github.com/rackt/react-router">react-router project.</a></li>
        <li>Uses <a href="http://gulpjs.com">Gulp</a> for building CSS and Javascript. Run <code>gulp watch</code> for rebuilding css/js on the fly while developing and <code>gulp build</code> to create minified versions for deploying to production.</li>
        <li>Easily create a custom font icon! Drop svg files in <code>src/styles/icons</code> and use them like <code>{"<span className='icon-home' />"}</code> (which becomes <span className="icon-home" />) and <code>{"<span className='icon-search' />"}</code> (which becomes <span className="icon-search" />)</li>
        <li>Includes <Link to="styleguide">sensible element stylings</Link> and several useful Sass plugins:</li>
        <ul>
          <li><a href="http://susy.oddbird.net/">Susy</a>: best-of-breed grid system.</li>
          <li><a href="https://github.com/Team-Sass/modular-scale">modular-scale</a>: easily create pleasing modular type scales.</li>
          <li><a href="https://github.com/jhardy/Sassy-Buttons">Sassy Buttons</a>: flexible button styling.</li>
          <li><a href="http://breakpoint-sass.com/">Breakpoint</a>: Super simple media queries.</li>
        </ul>
      </ul>
    </div>
