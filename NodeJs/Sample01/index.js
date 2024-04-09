const express = require('express')
const cors = require('cors')
const app = express()
app.use(cors())     //add conditions as parameters


// root
app.get('/', function (req, res) {
  res.send('Hello World')
})
//params & query
//http://localhost:3000/user/1?b=bb&c=cc
app.get('/user/:id', function(req, res) {
    const p = req.params    //url
    const q = req.query     //query
    const b = req.body      //post
    console.log(p);
    console.log(q);
    res.json({'userid': p.id})
})
//http://localhost:3000/sound/cat
app.get('/sound/:name', (req, res) => {
    const { name } = req.params
    if( name == "dog")
    res.json({'sound':'meongmeong'})
    else if (name == "cat")
    res.json({'sound':'yayong'})
    else
        res.json({'sound':'unknown'})
})

//CORS ?? - Security Purpose

app.listen(3000, () => {
    console.log('listening....')
})