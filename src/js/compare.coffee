# Dependencies
_ = require 'lodash'

stringifyHTML = (el) ->
  attributes = _.map el.attributes, 
    (attr) ->
      { name, value } = attr 
      name + '=' + value + ' '

  _.reduce attributes, 
    (sum, attr) -> sum + attr
    (el.nodeName + ' ').toLowerCase()

stringifyVDOM = (vo) ->
  keys = _.keys vo.attributes
  attributes = _.map keys,
    (k) ->
      value = vo.attributes[k]
      k + '=' + value + ' '

  _.reduce attributes, 
    (sum, attr) -> sum + attr
    vo.type + ' '


module.exports = Compare =
  entire: (el, vo) ->
    el = stringifyHTML el
    vo = stringifyVDOM vo
    el is vo

  type: (el, vo) ->
    nn = el.nodeName
    nn = nn.toLowerCase()
    nn is vo.type

