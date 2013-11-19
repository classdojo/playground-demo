mojo = require "mojojs"
bindableCall = require "bindable-call"

class StudentView extends mojo.View
  paper: require "./index.pc"

  _onRender: () ->
    console.log @model

module.exports = StudentView
