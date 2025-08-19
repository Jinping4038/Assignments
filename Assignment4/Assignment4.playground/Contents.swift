import UIKit
import Foundation

//Assignment 4
//In Swift playgorund have multiple examples to show usage of below:
//1.Enum- differnt types, functions and properties in enums
//Create an enum for the four seasons and print a message for each.

enum Season{
    case spring
    case summer
    case fall
    case winter
}
print(Season.spring)
print(Season.summer)
print(Season.fall)
print(Season.winter)

enum Season2{
    case spring, summer, fall, winter
    var message: String {
        switch self {
        case .spring: return "Spring is coming soon!"
        case .summer: return "Summer is hot!"
        case .fall: return "Fall is beautiful!"
        case .winter: return "Winter is cold!"
        }
    }
}
print(Season2.summer.message)

// Define an enum LoginState with cases loggedIn(user: String) and loggedOut.

enum LoginState {
    case loggedIn(user: String)
    case loggedOut(user: String)
}
// Create an enum with raw values for HTTP methods (GET, POST, etc.).
enum HTTPMethod: String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
    case patch = "PATCH"
    case head = "HEAD"
    case options = "OPTIONS"
}
// Add a computed property to an enum Planet returning its order from the sun.
enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    var orderFromSun: Int{
        switch self{
        case .mercury: return 1
        case .venus: return 2
        case .earth: return 3
        case .mars: return 4
        case .jupiter: return 5
        case .saturn: return 6
        case .uranus: return 7
        case .neptune: return 8
        }
    }
}


// Iterate over all cases of an enum TransportMode using CaseIterable.
enum TransportMode: String, CaseIterable{
    case car = "Car"
    case bus = "Bus"
    case train = "Train"
    case airplane = "Airplane"
    case bicycle = "Bicycle"
}

for mode in TransportMode.allCases{
    print(mode.rawValue)
}



//2.Class- Oops concept
//Create a class Car with properties make and model, and a method drive().
class Car{
    var make: String
    var model: String
    
    init(make: String, model: String){
        self.make = make
        self.model = model
    }
    
    func drive(){
        print("Drive\(model) car and made in\(make)")
    }
}
// Build an Employee class inheriting from Person with an extra property employeeID.
class Person{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Empolyee: Person{
    var employeeID: Int
    init(name: String, age: Int, employeeID:Int){
        self.employeeID = employeeID
        super.init(name: name, age: age)
    }
}


// Implement a class BankAccount with deposit and withdraw methods.
class BankAccount{
    private var balance: Double
    init(balance: Double) {
        self.balance = balance
    }
    
    func deposit(value: Double){
        balance += value
    }
    
    func withdraw(value: Double){
        balance -= value
        
    }
}
// Create a Shape base class and Triangle/Square subclasses overriding an area() method.
class Shape {
    func area() -> Double {
        return 0.0
    }
}

class Trangle: Shape{
    var width: Double = 0.0
    var height: Double = 0.0
    override func area() -> Double {
        return width * height / 2
    }
}


class Square: Shape{
    var width: Double = 0.0
    override func area() -> Double {
        return width * width
    }
}

// Demonstrate reference semantics by assigning one instance to multiple variables and modifying it.
//3.Classes refrence type usage
class Fruit{
    var name: String
    var tasty: Bool
    init(name: String, tasty: Bool) {
        self.name = name
        self.tasty = tasty
    }
    func getDetails(){
        print("\(name) tastes\(tasty ? "Good" : "Bad")")
    }
    
}

var fruit1 = Fruit(name: "apple", tasty: false)
var fruit2 = fruit1

fruit1.name = "banana"
fruit2.tasty = true
print(fruit1.getDetails())
print(fruit2.getDetails())



//4.Structs
//Create a struct Book with properties title and author and a method description().
struct Book{
    var title: String
    var author: String
    
    func description() {
        print("This book is \(title), and the author is \(author)")
        
    }
}
// Make a struct Temperature with a computed property converting Celsius to Fahrenheit
struct Temperature{
    var celsius: Double
    func convertToFahrenheit()->Double{
        return (celsius * 9.0 / 5.0) + 32.0
    }
}
// Build a struct Vector2D with methods to add and subtract two vectors
struct Vector2D{
    var x: Double
    var y: Double
    
    func add(_ other: Vector2D)-> Vector2D{
        return Vector2D(x: self.x + other.x, y: self.y + other.y)
        
    }
    
    func subtract(_ other: Vector2D)-> Vector2D{
        return Vector2D(x: self.x - other.x, y: self.y - other.y)
        
    }
}
