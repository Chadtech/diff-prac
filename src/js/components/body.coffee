# Dependencies
_        = require 'lodash'
Himesama = require 'himesama'
{ DOM }  = Himesama

# DOM
{ div, p, input, br } = DOM

# Components
Paper   = require './paper.coffee'
Archive = require './archive-list.coffee'


module.exports = Body = Himesama.createClass

  render: ->
    div null,
      Paper()
      Archive()