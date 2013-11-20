model = require("bindable-model")


###
###

class BaseModel extends model.Model

  ###
  ###

  constructor: (data, @application) ->
    super data


module.exports = BaseModel