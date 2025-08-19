//: [Previous](@previous)

import Foundation

/*
 Functions- functions it s a reusable block of code that perfoms specific task.
 Function can take input paramters and can return output, or can do both
 */


//Syntax
//func name(parameters) -> return type {
//    function body
//}

//1. simple function which is wihout any arguments and its not returning anything
func greetPeople() {
    print("Good Morning")
    print("have a nice day")
    print("")

}

greetPeople()
greetPeople()

func sayHello() -> Void{
    print("Hello Swift")
}
//sayHello()

//2. Function which takes some parameters

func doSumOfTwoNumbers(num1: Int, num2: Int){
    let sum = num1 + num2
    print("Sum of \(num1) and \(num2) is = \(sum)")
}
func doSumOfTwoNumbers(num1: Int){
    let sum = num1
    print("Sum of \(num1) and \(sum)")
}

doSumOfTwoNumbers(num1: 5, num2: 2)


//3.Function which accepts input paramter and retuns value
func doSubstraction(no1:Double, no2:Double) -> Double{
    let sub = no2 - no1
    
    return sub
}
let result = doSubstraction(no1: 20.0, no2: 5)
print("Sub of 20.0 and 5 is = \(result)")

func doSpecificTask(name:String, age:Int, gender:Bool) -> String{
    return "Hello \(name), you are \(age) years old and \(gender ? "Male" : "Female")"
}
print(doSpecificTask(name: "Swift", age: 10, gender: true))

//argument labels & paramter names
func muliply(_ x:Int, _ y:Int) -> Int{
    return x * y
}
print(muliply(5, 2))



////Default paramter function
func greet(name:String, employeeId:Int = 1){
    print("Welcome \(name) to team, your employeeId is \(employeeId)")
}
greet(name: "John")
greet(name: "Mark", employeeId: 25)


///varidic parameter
//this function accepts multiple values of same type

func sum(_ numbers:Int...) -> Int{
    numbers.reduce(0, +)
}
let s1 = sum(1,2,3)
print("Sum is \(s1)")

print()

let s2 = sum(1,2,3,4,5)
print("Sum is \(s2)")


//Inout paramters
func increment(value: inout Int){
    value += 1
}
var count = 10
print("before incement - \(count)")

increment(value: &count)
print("after incement - \(count)")

func swap(a: inout Int, b: inout Int){
    (a,b) = (b,a)
}
var a = 2
var b = 3
print("before swap -\(a) \(b)")

swap(a: &a, b: &b)
print("after swap \(a) \(b)")


func doAPICall(apiURL:String, httpMethod:String) -> String{
    //logic for api calling
    return "API called with url \(apiURL) and method \(httpMethod)"
}
