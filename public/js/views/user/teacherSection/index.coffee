mojo = require "mojojs"
bindableCall = require "bindable-call"

class TeacherSectionView extends mojo.View

  paper: require "./index.pc"

  bindings:
    "user.teacher": "teacher"

  section:
    students:
      type: "list"
      source: "teacher.students"
      modelViewClass: require("../student")

module.exports = TeacherSectionView
