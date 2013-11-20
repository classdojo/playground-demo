mediocre = require "mediocre"

commands = [
  require("./bootstrap"),
  require("./api/login"),
  require("./api/forecast"),
  require("./api/getUser"),
  require("./api/findUser")
]

module.exports = (app) ->
  app.mediator = m = mediocre()
  m.application = app

  for command in commands
    for name of command
      m.on name, command[name]