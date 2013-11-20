

module.exports = 
  getUser: (message, next) ->
    setTimeout (() ->
      next null, {
        _id: "50a15e089014da601900000c"
        email: "frank+parent@classdojo.com"
        password: "58a47f9d4ae47ab7cbb04717ce446ee7fedf791a"
        parentId: "50a15e089014da601900000b"
        teacherId: null
        teacher:
          _id: "50a15e089014da601900000b"
          name: "Chris Frank"
          email: "t1@classdojo.com"
          students: new bindable.Collection [
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
          students: new bindable.Collection [
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
    ), 500