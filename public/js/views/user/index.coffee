mojo = require "mojojs"
bindableCall = require "bindable-call"

class UserView extends mojo.View

  email: "" # "Enter email"
  returnError: false

  ###
  ###

  define: ["email", "user2"]

  ###
  ###

  bindings: []

  ###
  ###

  paper: require "./index.pc"

  ###
  ###

  loadUser: () ->
    if @email == "valid"
      console.log "loaded user"
      @user = @application.createModel "user", {
        _id: "50a15e089014da601900000c"
        email: "frank+parent@classdojo.com"
        password: "58a47f9d4ae47ab7cbb04717ce446ee7fedf791a"
        parentId: "50a15e089014da601900000b"
        teacherId: null
        teacher:
          _id: "50a15e089014da601900000b"
          name: "Chris Frank"
          students: [
            { 
              name: "Chris Frank"
              class: "Segudo"
              teacher: "Mr. Chrisman Frank"
              username: "stu-username"
              password: "stu-password"
            },
            { 
              name: "stu 2"
              class: "class 2"
              teacher: "Mr. Chrisman Frank"
              username: "stu-username"
              password: "stu-password"
            }
          ]
        parent:
          _id: "50a15e089014da601900000b"
          name: "Chris Frank"
          students: [
            { 
              name: "Chris Frank"
              class: "Segudo"
              teacher: "Mr. Chrisman Frank"
              username: "stu-username"
              password: "stu-password"
            },
            { 
              name: "stu 2"
              class: "class 2"
              teacher: "Mr. Chrisman Frank"
              username: "stu-username"
              password: "stu-password"
            }
          ]
      }
      
      console.log @user
      @set("user2", @user)
    else
      console.log "user not loaded"
    

  ###
  ###

  sections:
    #user: require(".././userSection")
    user: require("../userSection")
    parent: require("../parentSection")
    teacher: require("../teacherSection")
    # forecast:
    #   type: "list"
    #   source: "user.forecast"
    #   modelViewClass: require("./forecast")


module.exports = UserView
