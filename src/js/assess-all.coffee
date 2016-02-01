# Dependencies
_       = require 'lodash'
compare = require './compare'
assess  = require './assess'

module.exports = AssessAll = (el, vo) ->

  parent   = el.parentNode
  children = _.toArray el.children

  assess el, vo

  {min, max} = Math
  f = min children.length, vo.children.length
  _.forEach [0 .. (f - 1) ], (fi) ->
    elChild = children[fi]
    voChild = vo.children[fi]
    assess elChild, voChild

  s = max children.length, vo.children.length
  _.forEach [0 .. (s - f - 1)], (si) ->
    elChild = children[fi]
    voChild = vo.children[fi]

    if elChild?
      console.log ''
      # parent.removeChild elChild
    else
      # newChild = document.createElement child

  _.forEach children, (child, ci) ->
    vChild = vo.children[ci]

    if vChild?

    else

    AssessAll