////////Arrays

var todo : [String] = ["Finish collections course", "Buy groceries", "Respond to emails"]

todo.append("Pick up dry cleaning")

todo += ["Order book online"]


let secondTaskList = ["Mow the lawn"]

//reading from arrays

let firstTask = todo[0]
let thirdTask = todo[2]

todo[4] = "Brush teeth"

//inserting using indices 

todo.insert("Pay bills", atIndex: 2)

//removing items
todo.removeAtIndex(3)

todo.count

//Dealing with non-existent data
//let lastItem = todo[5]


///////Dictionaries

/*

Airport Code    Airport Name
(Key)           (Value)
LGA             La Guardia
LHR             Heathrow
CDG             Charles De Gaulle
HKG             Hong Kong International
DXB             Dubai International

*/


var airportCode : [String: String] = [
    "LGA": "La Guadia",
    "LHR": "Heathrow",
    "CDG": "Charles De Gaulle",
    "HKG": "Hong Kong International",
    "DXB": "Dubai International"
]

//Read from a dictionary
airportCode["LGA"]

//Inserting Key Value Pairs
airportCode["SYD"] = "Sydney Airport"

airportCode["LGA"] = "La Guardia International Airport"

airportCode.updateValue("Dublin Airport", forKey: "DUB")


//Removing Key Value Pairs
airportCode["DXB"] = nil
airportCode.removeValueForKey("DUB")


// Dealing with non-existent data

let airportName = airportCode["LGA"]

let orlandoAirpost = airportCode["MCO"]
