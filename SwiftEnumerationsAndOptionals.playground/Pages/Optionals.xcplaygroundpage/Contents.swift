struct Person {
    let firstName: String
    let middleName: String? //optional, allows it to be nil
    let lastName: String
    
    func getFullName() -> String {
        if middleName == nil{
            return firstName + " " + lastName
        }
        else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Avijeet", middleName: nil, lastName: "Sachdev")

me.getFullName()

// ! is a forced unwrapping, example of bad coding

let airportCodes = ["CDG": "Charles de Gaulle"]

if let newYorkAirport = airportCodes["JFK"] { // optional binding
    print(newYorkAirport)
}
else {
    print ("Whoops that key does not exist")
}



let weatherDictionary: [String : [String : String]] = [
    "currently": ["temperature": "22.3"],
     "daily": ["temperature": "22.3"],
     "weekly":["temperature": "22.3"]
    ]

let daily = weatherDictionary["daily"] //optional dict

if let dailyWeather = weatherDictionary["daily"],
    let highTemperature = dailyWeather["temperature"]{ // commas represent && to avoid pyramid of optional doom. every value depends on the previous conditionini
    print(highTemperature)
}



struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend (dict: [String : String]) -> Friend? {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
    }
    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}