//: [Previous](@previous)

import Foundation

/*
 Class- Blueprint for an object, refrence type. type that can hold data and behaviours.
 Can inherit
 
 OOPS- Object Oriented Programing
 1.Encapsulation - Hiding internal details
 2.Abstraction - only exposing necessary details
 3.Inhertiance - we can Inhert all the properties and functions of super/parent class
 4.Polymorphisim- having differnt behaviour or forms
 */
print("Hello")

//class BankAccount {
//    private var balance: Double = 0
//    
//    func deposit(_ amount: Double) {
//        balance += amount
//    }
//    
//    func withdraw(_ amount: Double) {
//        balance -= amount
//    }
//    
//    func getBalance() -> Double {
//        return balance + calculateIntesrest()
//    }
//    
//     func calculateIntesrest() -> Double {
//        return 0
//    }
//}
// let b1 = BankAccount()
//b1.deposit(100)
//b1.withdraw(10)
//
//
//class SavingAccount: BankAccount {
//    func getSavingIntesrest() -> Double {
//        return 5
//    }
//    
//    override func calculateIntesrest() -> Double {
//        return super.getBalance() * 0.05
//   }
//    
//}
//let s1 = SavingAccount()
//s1.deposit(50)
//s1.withdraw(5)
//s1.getBalance()
//
//class CurrentAccount: BankAccount {
//    override func calculateIntesrest() -> Double {
//        return super.getBalance() * 0.01
//   }
//}
//class FixedAccount: BankAccount {
//    override func calculateIntesrest() -> Double {
//        return super.getBalance() * 0.08
//   }
//}
//
//
//class MyAccount : SavingAccount{
//    
//}
//
//let m1 = MyAccount()
//m1.calculateIntesrest()

final class Person{
    var name: String
    var age: Int
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    func getDetails(){
        print("Person Name is \(name) and Age is \(age)")
    }
}

var p1 = Person( name: "Mike", age: 21)
//p1.getDetails()


var p3 = p1
//p3.getDetails()

p3.name = "John"
p1.age = 30

p3.getDetails()
p1.getDetails()

class Point{
    var x: Double = 0.0
    var y: Double = 0.0
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
let point = Point(x: 1.1, y: 2.3)
print(point.x)

class NetworkManger{
    func getDataFromAPI(url:String){
        ////
    }
}

class StudentViewModel{
    
}
