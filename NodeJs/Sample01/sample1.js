const express = require('express')
const app = express()

// root
app.get('/', function (req, res) {
  res.send('Hello World')
})
//
app.get('/dog', function(req, res) {
    res.send('<h1>dog</h1>')
})
//
app.get('/cat', function(req, res) {
    res.json({'sound': 'mewo'})
})



app.listen(3000, () => {
    console.log('listening....')
})