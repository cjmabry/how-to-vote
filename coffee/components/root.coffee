import React      from 'react'
import Html       from 'react-html-document'
import { states } from 'states'

require('scss/app')
require('img/favicon.ico')

module.exports = React.createClass
  displayName: 'Root'

  render: ->
    stateKey = @props.location.pathname.replace(/\//g, '').toUpperCase()
    if stateKey isnt ''
      state = states[stateKey]
      description = "Information about how to vote for Bernie in #{state.name}."
      url = "https://vote.berniesanders.com/#{stateKey}"
      if state.noImage
        image = require('img/share.png')
      else
        image = require("img/share/#{stateKey}.png")
    else
      description = 'Information about how to vote for Bernie in your state.'
      url = 'https://vote.berniesanders.com'
      image = require('img/share.png')
    image = "https://vote.berniesanders.com#{image}"

    metatags = [
      { name: 'viewport', content: 'width=device-width, initial-scale=1, maximum-scale=1' }
      { name: 'description', content: description }
      { name: 'og:url', content: url }
      { name: 'og:type', content: 'website' }
      { name: 'og:title', content: 'Vote for Bernie' }
      { name: 'og:description', content: description }
      { name: 'og:image', content: image }
      { name: 'twitter:card', content: 'summary_large_image' }
      { name: 'twitter:site', content: '@berniesanders' }
      { name: 'twitter:title', content: 'Vote for Bernie' }
      { name: 'twitter:description', content: description }
      { name: 'twitter:image', content: image }
      { httpEquiv: 'content-type', content: 'text/html; charset=utf-8' }
    ]

    scripts = [
      '/production.min.js'
      'https://addevent.com/libs/atc/1.6.1/atc.min.js'
    ]

    <Html title='Vote for Bernie' metatags={metatags} scripts={scripts} stylesheets=['/production.min.css']>
      <div id='app'>
        {@props.children}
      </div>
    </Html>
