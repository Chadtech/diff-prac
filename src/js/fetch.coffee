# Libraries
_ = require 'lodash'

# Utilities
root = 'http://chadtech-online-1.github.io/'
getURL = (i) -> root + i + '.txt'


module.exports = Fetch =


  paper: (papersIndex, next) ->
    xml = new XMLHttpRequest()
    xml.onreadystatechange = =>
      { readyState, status } = xml
      if readyState is 4 and status is 200

        res     = xml.responseText.split '|||'
        title   = res[0]
        date    = res[1]
        content = _.map (res.slice 2), (p) ->
          text: p.slice 1
          type: p[0]

        next
          title:    title
          date:     date
          content:  content 

    papersIndex = papersIndex.toString()
    until papersIndex.length is 3
      papersIndex = '0' + papersIndex
    xml.open 'GET', (getURL papersIndex), true
    xml.send null


  config: (next) ->
    xml = new XMLHttpRequest()
    xml.onreadystatechange = =>
      { readyState, status } = xml
      if readyState is 4 and status is 200

        res = xml.responseText.split '\n'
        next
          paperCount: res.length
          archive:    res

    xml.open 'GET', (getURL 'config'), true
    xml.send null      
