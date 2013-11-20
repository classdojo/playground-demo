mojo = require "mojojs"
bindableCall = require "bindable-call"
bindable = require "bindable"

class UserView extends mojo.View
  
  ###
  ###

  returnError: false

  ###
  ###

  define: ["email", "user", "loadUserRequest", "loading"]

  ###
  ###

  bindings: 
    "findUserRequest.data"    : "user"
    "findUserRequest.error"   : "error"
    "findUserRequest.loading" : "loading"

  ###
  ###

  paper: require("./index.pc")

  ###
  ###

  findUser: (email) ->
    @set "findUserRequest", bindableCall (next) =>
      @application.mediator.execute "findUser", { email: email }, next
    
  ###
  ###

  sections:
    user    : require("./userSection")
    parent  : require("./parentSection")
    teacher : require("./teacherSection")


module.exports = UserView
