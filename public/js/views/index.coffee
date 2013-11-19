bindable = require "bindable"

module.exports = (app) ->

  # all independent views from the root. This is useful when sprinkling
  # mojo views throughout an existing backbone / ember / angular application.
  app.registerViewClass "main", require("./main")


  # add any playground components here - they'll show up in the sidebar
  playgroundViewComponents = {
    hello: require("./hello"),
    custom: require("./custom"),
    user: require("./user")
  }

  playgroundViewComponentsAr = new bindable.Collection()

  for name of playgroundViewComponents
    app.registerViewClass name, viewClass = playgroundViewComponents[name]

    playgroundViewComponentsAr.push new bindable.Object {
      viewName: name
      viewClass: viewClass
    }


  app.models.set "viewComponents", playgroundViewComponentsAr
