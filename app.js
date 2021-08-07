const express = require('express')
const path = require('path')
const fs = require('fs').promises

const app = express()

app.set('view engine', 'ejs')
app.set('views', path.resolve(__dirname, 'pages'))

app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))

const port = process.env.PORT ?? 3000
const logsPath = path.resolve(__dirname, 'data', 'logs.txt')

app.get('/', async (req, res) => {
  const data = await fs.readFile(logsPath, 'utf-8')
  const logs = data.split('\r\n').filter(i => !!i)
  res.render('index', {logs})
})

app.post('/', async (req, res) => {
  const text = req.body.text
  await fs.appendFile(logsPath, `${text}\r\n`)
  res.redirect('/')
})

app.listen(port, () => console.log(`Server listening on port ${port}`))