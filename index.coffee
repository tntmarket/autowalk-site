express = require 'express'
app = express()

app.get '/', (req, res) ->
   res.sendFile "#{__dirname}/index.html"

app.use express.static(__dirname)

app.listen process.env['PORT']

console.log "Started on port #{process.env['PORT']}"
