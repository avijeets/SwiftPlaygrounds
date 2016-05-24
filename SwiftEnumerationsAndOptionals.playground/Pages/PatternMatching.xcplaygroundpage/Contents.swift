enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.1
    case Quarter = 0.25
}

let wallet: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter, .Penny, .Nickel, .Dime, .Penny, .Nickel, .Quarter, .Quarter, .Penny]

var count: Int = 0

for coin in wallet {
    switch coin {
    case .Quarter: count += 1
    default: continue
    }
}

//pattern matching
for case .Quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .Nickel = coin {
        print("Not so much money")
    }
    else if case .Dime = coin {
        print("Eh I guess it's some money")
    }
}

let someOptional: Int? = 42
if case .Some(let x) = someOptional {
    print(x) //essentially if let
}

//Nil Coalescing Operator

let firstName: String? = "Avijeet"
let username = "avijeets"

var displayName: String

if firstName != nil {
    displayName = firstName!
}
else {
    displayName = username
}

//ternary: question ? answer1 : answer2

displayName = firstName != nil ? firstName! : username

//nil coalsecing operator
displayName = firstName ?? username