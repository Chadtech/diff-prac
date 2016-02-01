# Dependencies
_      = require 'lodash'
Assess = require './assess'


A = 
  type:         'div'
  attributes:   (id: 'A')
  children: [(
    type:       'p'
    attributes: ('class': 'point')
    children:   ['A']
  )]

B = 
  type:         'div'
  attributes:   (id: 'B')
  children: [(
    type:       'p'
    attributes: ('class': 'point')
    children:   ['B']
  )]

C = 
  type:         'div'
  attributes:   (id: 'C')
  children: [(
    type:       'p'
    attributes: ('class': 'point')
    children:   ['C']
  )]

updatedRoot =
  type:         'p'
  attributes:
    id:         'root'
    yeee:       'dank'
    wow:        'cool'
  children:     [ A, B, C ]


Root = document.getElementById 'root'

dewit = => Assess Root, updatedRoot

setTimeout dewit, 1000

