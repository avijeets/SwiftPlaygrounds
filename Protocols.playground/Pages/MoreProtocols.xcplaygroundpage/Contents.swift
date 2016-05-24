protocol Printable {
    func description() -> String
}

protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}

struct User: PrettyPrintable {
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name)\n age: \(age)\n address:\(address)"
    }
}

let user = User(name: "Avijeet", age: 19, address: "somethung")

print (user.description())

user.prettyDescription()

/*
 Can Do 
  > Equatable (LHS == RHS)
  > double equals means it conformed to Equatable
 
  > Comparable (<=, >=, <, >)
  > follows convention of "-able"
 
 Is A
  > object is a type of another object
  > protocol models a concrete type, which follows the convention of "-type"
 
 Can Be
  >intuitive, they model behavior
  > for vars initialized with literal values
  > lets you assign nil to optionals
  > convention is "-convertible"
 
 */


struct Point {
    let x: Int
    let y: Int
    
    func pointsAroundMe(withRange range: Int) -> [Point] {
        var results: [Point] = []
        
        for x in (self.x - range)...(self.x + range) {
            for y in (self.y - 1)...(self.y + 1) {
                let point = Point(x: x, y: y)
                results.append(point)
            }
        }
        
        return results
    }
}

enum Direction {
    case Up
    case Down
    case Right
    case Left
}

protocol Movable {
    func move(direction: Direction, distance: Int)
}

protocol Destructable {
    func decreaseLife(factor: Int)
}

protocol Attackable {
    var strength: Int { get }
    var range: Int { get }
    
    func attack(player: PlayerType)
}

protocol PlayerType {
    var position: Point {
        get set
    }
    var life: Int {
        get set
    }
    init (point: Point)
}

class Enemy: PlayerType, Destructable, Attackable, Movable {
    var position: Point
    var life: Int = 10
    var strength: Int = 5
    var range: Int = 2
    
    required init(point: Point) {
        self.position = point
    }
    
    func decreaseLife(factor: Int) {
        self.life -= factor
    }
    
    func attack(var player: PlayerType) {
        player.life = player.life - strength
    }
    
    func move(direction: Direction, distance: Int) {
        switch direction {
        case .Up: position.y += 1
        case .Down: position.y -= 1
        case .Left: position.x -= 1
        case .Right: position.x += 1
        }
    }
}



