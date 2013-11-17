mojo = require "mojojs"
bindableCall = require "bindable-call"

class ComponentView extends mojo.View
  paper: require("./component.pc")

class MainView extends mojo.View

  ###
  ###

  paper: require "./index.pc"

  ###
  ###

  sections:
    components:
      type: "list"
      source: "application.models.viewComponents"
      modelViewClass: ComponentView


  ###
  ###

  selectComponent: (component) =>
    viewClass = component.get("model.viewClass")
    view = new viewClass()
    view.application = @application
    view.render()
    @set "sections.currentView", view



module.exports = MainView