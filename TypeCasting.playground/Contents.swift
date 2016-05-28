
class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class HourlyEmployee: Employee {
    let hourlyWage: Double
    var hoursWorked: Double
    
    init(name: String, hourlyWage wage: Double, hoursWorked hours: Double) {
        self.hourlyWage = wage
        self.hoursWorked = hours
        super.init(name: name)
    }
    
    func payWages() -> Double {
        return hourlyWage * hoursWorked
    }
}

class SalariedEmployee: Employee {
    let salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func paySalary() -> Double {
        return salary
    }
}

let employees = [
    HourlyEmployee(name: "Elvis Presley", hourlyWage: 299.99, hoursWorked: 100.00),
    SalariedEmployee(name: "Diana Prince", salary: 120000.0),
    SalariedEmployee(name: "Taylor Swift", salary: 80000000.00),
    HourlyEmployee(name: "Avijeet Sachdev", hourlyWage: 10.00, hoursWorked: 100.00),
    SalariedEmployee(name: "Tim Cook", salary: 10000000.00),
    HourlyEmployee(name: "Ben Jakuben", hourlyWage: 11.00, hoursWorked: 100.00)
]


for employee in employees {
    if employee is HourlyEmployee {
        let hourlyEmployee = employee as! HourlyEmployee
        hourlyEmployee.payWages()
    }
    if employee is SalariedEmployee {
        if let salariedEmployee = employee as? SalariedEmployee {
            salariedEmployee.paySalary()
        }
        
    }
}

