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
      # parent = el.parentNode

      # console.log 'ye shouldnt be here!'


