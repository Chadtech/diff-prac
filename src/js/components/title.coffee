# Dependencies
_        = require 'lodash'
Himesama = require 'himesama'
{ DOM }  = Himesama

# DOM
{ div, p } = DOM


module.exports = Title = Himesama.createClass

  goToOldChadtech: ->
    window.location.assign 'http://chadtech.github.io'

  goToTwitter: ->
    window.location.assign 'https://twitter.com/TheRealChadtech'

  render: ->
    div className: 'container',
      div className:    'row',
        div className:  'column big',
          p className:  'header banner', 
            'Chadtech Online 1'

        div className:  'column',
          p className:  'point ignorable', 
            'Chadtech0@gmail.com'
          p 
            className: 'point link'
            event:     click: @goToOldChadtech
            'Chadtech Online 0'

        div className:  'column',
          p 
            className: 'point link'
            event:     click: @goToTwitter
            '@TheRealChadtech'