//: [Previous](@previous)

import Foundation

/*
 Tuples- It is lighweight way to group multiple values into a single value
 It can be of same or differnt types
 -they have fixed number of elements
 - we dont require custom struct/class when you just need to group related values
 - This are also value types
 - u cant add/remove elements after creation
 - it can have labels, but not compulsory
 
 */

let user = ("Mark", 30)
//print(user.0) // this is accessing values using position
//print(user.1)


let httpStatus = (statusCode:200, msg:"Success")
//print(httpStatus.msg) /// using labels
//print(httpStatus.statusCode)


let location = (latitude:234.234, longitude:123.234)
//print(location.latitude)
//print(location.longitude)

let employee = ("John", "123,some street", "123434",1, true)
//print(employee.3)

let (name, age) = user
//print(name)
//print(age)

//let (code,msg) = httpStatus
//
//print(code)
//print(msg)

func fetchUsersList() -> (statusCode:Int, msg:String, users:[String]){
    //logic which fetches data from api
    return (400,"Success",["Mark","John","Alice"])
}

let apiResult = fetchUsersList()
print(apiResult.users)
print(apiResult.msg)
print(apiResult.statusCode)

if apiResult.statusCode == 200{
    print("Data fetched successfully")
}else{
    print("Api call failed")
}

func getUserCoordinates() -> (latitude:Double, longitude:Double){
    return (51.1, -45.2)
}

let coordinates = getUserCoordinates()
print(coordinates.latitude)
print(coordinates.longitude)
