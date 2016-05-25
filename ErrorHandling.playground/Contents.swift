// Error Handling

Int.init("abc") // domain error

/*
 
 Compiler Errors
  > Domain Errors
 
 Runtime Errors
  > Recoverable Errors
  > Unrecoverable Errors
 
 */

struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: ErrorType {
    case InvalidData(String) //recoverable error
}

func createFriendFromJSON(dict: [String : String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.InvalidData("Name key fails")
    }
    guard let age = dict["age"] else {
        throw FriendError.InvalidData("Age key fails")
    }

    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}

func sendMessageToFriend(friend: Friend, message: String) {}

let response = ["name": "Pasan", "age": "27", "address": "someAddress"]

do {
    let friend = try createFriendFromJSON(response)
    sendMessageToFriend(friend, message: "")
}
catch FriendError.InvalidData(let key){
    print(key)
}

/*
 NSError
    > Error Domain
    > Error Code
    > User Info Dictionary
 */
