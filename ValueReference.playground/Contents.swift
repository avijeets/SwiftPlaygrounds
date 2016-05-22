struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Avijet Sachdev", email: "a@avijeets.com", age: 19)

var anotherUser = someUser

someUser.email = "sachdev.avijeet@gmail.com"

someUser.email
anotherUser.email

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init (name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"

somePerson.email
anotherPerson.email // value has been changed (contrary to structs) because classes are a reference type and structs are a value type

/* instances of a struct (value type), swift copies values and makes new var in memory
   instances of a class (reference type), swift points to old instance
 */