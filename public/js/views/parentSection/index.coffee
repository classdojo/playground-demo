mojo = require "mojojs"
bindableCall = require "bindable-call"

class ParentSectionView extends mojo.View
  
  paper: require "./index.pc"

  # _onRender: () ->
  #   console.log @get("user.parent")

  sections:
    students:
      type: "list"
      source: "user.parent.students"
      modelViewClass: require("../student")

module.exports = ParentSectionView
