//: [Previous](@previous)

import Foundation
/*
 Struct- they are value types
 , doesnt support inheritance
 are immutable by default - when we delcare a property, it cant be modified by default
 and gets stored on stack memory
 default memberwise initilizer
 */


struct Person {
    var name: String
    var age: Int
    
    mutating func updatePersonDetails(newName:String, newAge:Int){
        self.name = newName
        self.age = newAge
    }
    
    func getDetails(){
        print("Person Name is \(name) and Age is \(age)")
    }
}

let per1 = Person(name: "ABC", age: 25)
per1.getDetails()


var per2 = per1
per2.name = "qwe"
per2.age = 56

per2.getDetails()


struct Article{
    let id: Int
    let title: String
    let description: String
}

struct Size{
    var width: Int
    var height: Int
    
    var area: Int{
        width * height
    }
}

let s1 = Size(width: 10, height: 20)
print(s1.area)
