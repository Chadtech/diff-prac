# Dependencies
_       = require 'lodash'
compare = require './compare'

module.exports = Assess = (el, vo) ->

  unless compare.entire el, vo 
    if compare.type el, vo
      elsAttr = _.reduce el.attributes, 
        (sum, attr) ->
          { name, value } = attr 
          sum[name] = value
          sum
        {}
      vosAttr = vo.attributes

      attrs = _.extend elsAttr, vosAttr
      attrs = _.keys attrs
      _.forEach attrs, (k) ->
        if (not vosAttr[k]?) and elsAttr[k]?
          el.removeAttribute k
        else
          if vosAttr[k] isnt elsAttr[k]
            el.setAttribute k, vosAttr[k]          

    else
      parent   = el.parentNode
      children = _.toArray el.children

      newEl = document.createElement vo.type
      keys  = _.keys vo.attributes

      _.forEach keys, (k) ->
        v = vo.attributes[k]
        newEl.setAttribute k, v

      _.forEach children, (child) ->
        newEl.appendChild child

      parent.replaceChild newEl, el


