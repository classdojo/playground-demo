mojo = require "mojojs"
bindableCall = require "bindable-call"

class HelloView extends mojo.View

  username: "user"
  password: "pass"
  placeholders: "{{placeholders}}"

  ###
  ###

  define: ["loginRequest", "user"]

  ###
  ###

  bindings:
    "loginRequest.result": "user"


  ###
  ###

  paper: require "./index.pc"

  ###
  ###

  login: () ->

    # bindableCall is a useful utility that maps out
    # err, and success responses

    # login is also a very appropriate command since
    # a user object should be created each time a user logs in - that way there's
    # no stale data.
    @set "loginRequest", bindableCall (next) =>
      @application.mediator.execute "login", {
        username: @username,
        password: @password
      }, next


  ###
  ###

  sections:
    forecast:
      type: "list"
      source: "user.forecast"
      modelViewClass: require("./forecast")




module.exports = HelloView