


module.exports = 
  findUser: (message, next) ->

    if message.data.email isnt "valid"
      return next new Error "email isn't valid"

    # get the app
    app = message.mediator.application


    # do an API call here, then create a user model out of the response
    # and return it.
    user = app.createModel "user", { email: "valid" }


    next null, user