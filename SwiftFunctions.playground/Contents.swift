//Swift Functions


func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
}

//room1
let areaOfRoom1 = calculateArea(10, width: 8)
areaOfRoom1
//room 2
calculateArea(12, width: 15)

func concatenateStrings(a: String, b:String) -> String {
    return a + b
}

concatenateStrings("A", b: "B")

func sayHello (to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Avi", and: "Pasan")


// Default Values

func carpetCostCalculator (length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
    //Gray - $1/sqft
    //Tan - $2/sqft
    //Deep Blue - $4/sqft
    let area = calculateArea(length, width: width)
    var price: Int
    switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
    default: price = 0
    }
    return (price, carpetColor)
}

let result = carpetCostCalculator(length: 10, width: 20)

result.price
result.carpetColor

// Function Scope
func countDownAndUp (var a: Int) {
    var b = a
    while b >= 0 {
        b--
        a++
        print("a: \(a)")
        print("b: \(b)")
    }
}

var a = 20
countDownAndUp(a)







