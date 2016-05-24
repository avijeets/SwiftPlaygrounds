protocol FullyNameable {
    var fullName: String {  get }
}

struct User: FullyNameable {
    var fullName: String
}

let user = User(fullName: "John Smith")

struct Friend: FullyNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")

friend.fullName

/************************************

Inheritance vs. Protocols
 
 Car IS-A type of vehicle so protocol is perfect for that case
 Car inherits from Vehicle
 -> exact same attributes and maybe add to it

 Birds HAS-An ability to fly like planes, so method is best by protocols (composition)


************************************/


import Foundation

protocol Payable {
    func pay() -> (basePay: Double, benefits: Double, deductions:Double, vacationTime:Int)
}

enum EmployeeType {
    case Manager
    case NotManager
}

class Employee {
    
    let name: String
    let address: String
    let startDate: NSDate
    let type: EmployeeType
    
    var department: String?
    var reportsTo: String?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: EmployeeType) {
        self.name = fullName
        self.address = employeeAddress
        self.startDate = employeeStartDate
        self.type = employeeType
        
    }
    
}

func payEmployee (employee: Payable) {
    let paycheck = employee.pay()
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage: Double = 15.00
    var hoursWorked: Double = 10
    let availableVacation = 0
    
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int) {
        return ((hourlyWage * hoursWorked), 0, 0, availableVacation)
    }
}

let hourlyEmployee = HourlyEmployee(fullName: "Avijeet Sachdev", employeeAddress: "none", employeeStartDate: NSDate(), employeeType: .NotManager)

payEmployee(hourlyEmployee)
let employee = Employee(fullName: "Gabe", employeeAddress: "some address", employeeStartDate: NSDate(), employeeType: .Manager)

/************************************/

protocol Blendable {
    func blend()
}
/* 
    Protocols can be used:
    > As a parameter type or return type in a function, method, or initializer
    > As the type of a constant, variable, or property
    > As the type of items in an array, dictionary, or other container
 */

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("I'm mush")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't changed. I'm still milk.")
    }
}

func makeSmoothie(ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name:"Strawberry")
let cheddar = Cheese(name:"Cheddar") // in dairy, cannot be blended
let chocolateMilk = Milk(name:"Chocolate") // in dairy, can be blended

let ingredients : [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(ingredients)


/******************************************************/

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 129968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom/m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())


