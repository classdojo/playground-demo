model = require "bindable-model"
Forecast = require "./forecast"

class User extends require("./base")

  ###
  ###

  define: ["email"]
  
  ###
  ###

  virtuals:
    "forecast": (next) -> next null, @application.createModel("forecasts", { user: @ })

  ###
  ###

  _load: (next) ->
    console.log "loading user"
    @application.mediator.execute "getUser", { _id: @get("_id") }, (err, data) =>
      return next(err) if err?
      @set data
      next()



module.exports = User
