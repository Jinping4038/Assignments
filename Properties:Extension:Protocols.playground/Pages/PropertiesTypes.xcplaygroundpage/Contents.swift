import UIKit
import Foundation
/*
 1.Stored property
 (A property that stores a constant or variable value inside an instance.)
 
 2.Computed property
 (A property that doesn’t store a value, but instead recalculates it each time it’s accessed.)
 Useful when the value depends on other properties.
 
 
 3.Lazy property
 (Only created when accessed the first time, then stored.
 Declared with lazy var. Must be var (cannot be let).)
 Useful for expensive operations (e.g., loading a file, network request).
 */




struct Person{
    // 1.Stored property
    var name: String
    var gender: String
    var age: Int
    
    // 2.Computed property
    var introduction: String{
        print("Introduce yourself")
        return "My name is \(name), I am \(age) years old."
    }
    
    var isAdult: Bool {
        return age>=18
    }
    
    //3.Lazy property
    lazy var hobbies: String = {
        print("I have a lot of hobbies.")
        return "Reading, Swimming, Coding."
    }()
}


var p1 = Person(name: "Jin", gender: "Female", age: 30)
print(p1.isAdult)
print(p1.hobbies)
print(p1.hobbies)


struct Rectangle{
    // 1.Stored property
    var width: Double
    var height: Double
    
    // 2.Computed property
    var area: Double {
        print("The area is")
        return width * height
    }
    //3.Lazy property
    lazy var description: String = {
        print("Rectangle description")
        return "The area is \(area)."
    }()
    
    //4.Static property
    static let shapeType = "Quadrilateral"

}

var r1 = Rectangle(width: 3.0, height: 4.0)
print(r1.area)
print(r1.description)
print(Rectangle.shapeType)

//❌ r1.shapeType
//lazy var description → belongs to each instance (r1, r2, …).
//Each rectangle has its own description.

//static let shapeType → belongs to the type itself (Rectangle).
//Shared across all rectangles — not tied to any instance.

