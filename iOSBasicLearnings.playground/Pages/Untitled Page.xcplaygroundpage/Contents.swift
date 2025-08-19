import UIKit

//var greeting = "Hello, playground"

let codeGreeting = "Hello Swift"
print(codeGreeting)

/*
 let- Constant, a name or value which cant be changed later
 var - variable- a name bound to a value that can be changed/modifed later or over time
 
 iOS
 MacOS
 WatchOS
 tvOS
 visionOS
 
 */
/*
 Int
 String
 Character - a,b
 Bool - true/ false
 Double
 Float
 Date
 
 Prefer Explict types
 1.Public apis/ libraraies(clarity & stabilty)
 2.Empty literals ([String], [Sting:Int])
 3.Api models- money,values,date,unit
 4.Performce sentative code, presion matter, Float Double
 */

let currentDate: Date = Date()
///Type safety
///
let pi:Float
pi = 3.14159 //immutable
print(pi)


let v:Int
var bool = true
if bool {
  v = 12
}
else {
  v = 20
}
print("the value for v is \(v)")

///Type inference
let value = 100
print(value)

var count = 0 //mutable
print(count)

count = 10
print(count)

var name = "John"
print(name)

name = "Lane"
print(name)


////// type inferincing
var age = 20
let gender = "Male"
let isCorrect = false
let n1 = 12.1

///Explicit Inference
let myNumber: Int = 10
let aDouble: Double = 3.14
let aFloatVar: Float = 1.2343535
let aChar: Character = "B"
let address: String = "123 Main St"
let isValid: Bool = false
let someNo: UInt = 10

var total:Int = 1
let totalValue:Double = Double(total)
let myValue = Int(totalValue)

var no = 1

let timeOut: TimeInterval = 5
