express = require "express"
path = require "path"
fs = require "fs"
app = module.exports = express()

# Settings
app.configure "development", () ->
   app.use express.logger "dev"
   app.use express.errorHandler { dumpExceptions: true, showStack: true }

app.configure "production", () ->
   app.use express.errorHandler()

# Middleware
app.use express.query()
app.use express.bodyParser()
app.use express.static path.join __dirname, "../public"

urlRoot = process.env.URL_ROOT or "localhost:2100"
images = fs.readdirSync path.join __dirname, "../public/images"

images[i] = "#{urlRoot}/images/#{image}" for image, i in images
    
app.get "/images", (req, res, next) ->
   res.json
      count: images.length
      images: images