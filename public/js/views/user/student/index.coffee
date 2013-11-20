mojo = require "mojojs"
bindableCall = require "bindable-call"

class StudentView extends mojo.View
  paper: require "./index.pc"
  bindings:
    "model": "student"


module.exports = StudentView
