soManyTimes = 1000000

clockIt = (itsCalled, what) ->
  start   = new Date()
  what()
  end     = new Date()
  
  end.getTime() - start.getTime()

averages = [0, 0, 0, 0]

wholeOperation = =>
  console.log 'A'

  averages[0] += clockIt 'Create a div', 
    ->
      _.times soManyTimes, ->
        document.createElement 'div'


  averages[1] += clockIt 'get by id', 
    ->
      _.times soManyTimes, ->
        document.getElementById 'dank'

  averages[2] += clockIt 'set attribute',
    ->
      ye = document.getElementById 'dank'
      _.times soManyTimes, ->
        ye.setAttribute 'hell-ye', 'dog'

  averages[3] += clockIt 'append child', 
    ->
      ye  = document.getElementById 'dank'
      yee = document.createElement 'p'
      _.times soManyTimes, ->
        ye.appendChild yee

_.times 10, => wholeOperation()

console.log 'Create a div', averages[0] / 500
console.log 'Get by ID', averages[1] / 500
console.log 'Set Attribute', averages[2] / 500
console.log 'Append Child', averages[3] / 500