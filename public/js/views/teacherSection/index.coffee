mojo = require "mojojs"
bindableCall = require "bindable-call"

class TeacherSectionView extends mojo.View

  paper: require "./index.pc"

  bindings:
    "user2.teacher": "teacher"

  section:
    students:
      type: "list"
      source: "user2.teacher.students"
      modelViewClass: require("../student")

module.exports = TeacherSectionView
