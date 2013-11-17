model = require "bindable-model"
Forecast = require "./forecast"

class User extends model.Model

  ###
  ###

  constructor: (options) ->
    @application = options.application
    super options


  ###
  ###

  virtuals:
    "forecast": (next) -> next null, @application.createModel("forecasts", { user: @ })



module.exports = User