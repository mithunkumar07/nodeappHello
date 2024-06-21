import express from 'express'
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.send('hello app')
})

app.listen(80, () => {
    console.log('Server is running on port 3000')
  })