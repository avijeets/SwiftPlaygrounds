class Address {
    var streetName: String?
    var buildingNumber: String?
    var apartmentNumber: String?
}

class Residence {
    var address: Address?
}

class Person {
    var residence: Residence?
}

let susan = Person()

let address = Address()
address.streetName = "1234 Something Dr"
address.buildingNumber = "Building 10"
address.apartmentNumber = "204"

let residence = Residence()
residence.address = address

susan.residence = residence

if let home = susan.residence,
    let postalAddress = home.address,
    let apartmentNumber = postalAddress.apartmentNumber,
    let convertedNumber = Int(apartmentNumber) {
    
    
    print(convertedNumber)
}

//better way to do the previous check
if let apartmentNumber = susan.residence?.address?.apartmentNumber {
    print(apartmentNumber)
} // optional chaining for calling on an optional that might be nil

