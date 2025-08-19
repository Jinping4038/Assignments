//: [Previous](@previous)

import Foundation

/*
 Loops-  a way by which u will iterate through collections
 
 1.For-in
 2.while
 3. repeat while
 4.stride(from:to/by:)
 5.enumerated()
 */
//1.for-in

let nums = [1,2,3,4,5,6,7,8,9]

for x in nums{
  //  print(x)
}

for i in 0...10{
//    for j in 0..<5{
//        print(i)
//        print(j)
//    }
//    print(i)
}

for j in stride(from: 0, to: 10, by: 1){
//    print(j)
}

for i in stride(from: 0, through: 50, by: 5){
//    print(i)
}

for (index,value) in nums.enumerated(){
    if index < 5{
//        print("index = \(index), value is = \(value)")
    }
}

let myPairs = ["a":1,"b":2,"c":3,"d":4]
for val in myPairs{
    //print(val)
}

for (key,value) in myPairs{
    if key == "a"{
   //     print("key = \(key), value is = \(value)")
    }
}

for char in "Hello Swift".enumerated(){
   // print(char)
}

for x in stride(from: 20, through: 0, by: -2){
   // print(x)
}
 

//While- when u may not need to run the loop at all
var num = 5
while num < 30{
    print(num)
    num += 1
}
var count = 3
//while count > 0{
//    print(count)
//    count -= 1
//}

var attempts = 0
let maxAttempts = 3
var isSuccess = false
//while attempts < maxAttempts && !isSuccess{
//    print("attempts = \(attempts)")
//    attempts += 1
//    isSuccess = Bool.random() // api calling logic
//}


//repeat while loop
var no = 100
repeat{
    print(no)
    no += 1
}while no < 10


var input:String
repeat{
    input = "abc"
    print(input)
}while input != "abc"
