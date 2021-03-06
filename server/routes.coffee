###*
Main application routes
###

'use strict'

errors = require './components/errors'
path = require 'path'

module.exports = (app) ->

  # Insert routes below
  app.use '/api/barbers', require './api/barber'
  app.use '/api/customers', require './api/customer'


  # All undefined asset or api routes should return a 404
  app.route('/*').get errors[404]
