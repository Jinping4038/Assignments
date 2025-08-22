//: [Previous](@previous)

import Foundation
/*
 Protocols- /interface in java
 blueprint of methods/functions or variables
 Protocols when confirmed over classes,structs, enums, then they need to provide implemantaion for it
 basically they are the contract which needs to be followed by whoever adopts it
 
 protocol inheritance
 protocol composition: codeable
 protocol extension
 
 can protocol store data?
 
 
 */


//Define a protocol Playable with a method play(). Make Music and Video structs conform to it.
protocol Playable{
    func play()
}


struct Music: Playable {
    func play(){
        print("Play music")
    }
}

struct Video: Playable{
    func play(){
        print("Play video")
    }
}

var p1 = Music()
p1.play()

let arr: [Playable] = [Music(), Video()]
for item in arr {
    item.play()
}

//Create a protocol Shape with an area() method. Implement Circle and Rectangle.
protocol Shape{
    func area() -> String
}

struct Circle: Shape{
    var radius: Double
    
    func area() -> String {
        let value = 3.14 * radius * radius
        return "The Circle area is \(value)"
    }
}


struct Rectangle: Shape{
    var width: Double
    var height: Double
    func area() -> String{
        let value = width * height
        return "The Rectangle area is \(value)"
    }
}

let c1 = Circle(radius: 5.0)
print(c1.area())

let r1 = Rectangle(width: 10.0, height: 20.0)
print(r1.area())

//Make a protocol Cacheable with methods save(key:value:) and load(key:). Implement it with a Dictionary.
protocol Cacheable {
    mutating func save(key: String, value: Any)
    func load(key: String) -> Any?
}
struct Dictionary: Cacheable{
    private var dictionary: [String: Any] = [:]
    
    mutating func save(key: String, value: Any) {
        dictionary[key] = value
    }
    
    func load(key: String) -> Any? {
        return dictionary[key]
    }
}

//Use protocol extensions to give Greetable a default sayHi() method.
protocol Greetable{
    func sayHi()
}

extension Greetable{
    func sayHi(){
        print("Hi")
    }
}

struct Person: Greetable {
    var name: String
}

let person = Person(name: "Jin")
person.sayHi()

protocol Api {
    var users: [String] { get set }
    func getUsers() -> [String]
    mutating func addUser(user: String)-> [String]
}

struct ApiImpl1: Api {
    var users = ["Jin", "Tom"]
    func getUsers() -> [String] {
        return users
    }
    mutating func addUser(user: String) -> [String]{
        users.append(user)
        return users
    }
}

class ApiImpl2: Api {
    var users = ["Jin", "Tom"]
    func getUsers() -> [String] {
        return users
    }
    func addUser(user: String) -> [String]{
        users.append(user)
        return users
    }
}


protocol API {
    associatedtype T
    func getData() -> T
    func getData2() -> T
}

class StringAPI: API {
    func getData() -> String {
        return ""
    }
    func getData2() -> String {
        return "3"
    }
}

class IntAPI: API {
    func getData() -> Int {
        return 0
    }
    func getData2() -> Int {
        return 3
    }
}
