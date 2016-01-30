# Dependencies
_        = require 'lodash'
Himesama = require 'himesama'
{ DOM }  = Himesama

# DOM
{ div } = DOM


module.exports = HorizontalBar = Himesama.createClass

  render: ->
    div 
      style: 
        width: '100%'
        height: '2px'
        backgroundColor: '#404844'