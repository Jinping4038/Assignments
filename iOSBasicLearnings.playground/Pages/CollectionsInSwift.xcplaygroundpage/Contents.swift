//: [Previous](@previous)

import Foundation

/*
  Collections- this are container types that store multiple values of same or mixed types as well.
 3 types
 
 1.Array
 2.Set
 3.Dictionary - (hashmap)
 
 Array= ordered set of values, indexed based storage
 
 Set = Unordered collection of unique values
 
 Dictionary- its a collection of key value pairs
 key - needs to be unique
 */

var names = ["Alice", "Bob", "Charlie"]
//print(names)


names.append("Dan")
names.append("Frank")
//print(names)

//names.remove(at: 2)
//print(names.count)

for value in names{
 //   print(value)
}


//Set - union, intersection, subtracting
var someFruits: Set<String> = ["Apple","Banana", "Orange","Watermelon","Apple","Orange"]
print(someFruits)

var someNumber: Set<Int> = [1,2,1,1,3,4,5,77,13,454]
someNumber.insert(100)
print(someNumber)

var tags = Set<String>()
tags.insert("a")
tags.insert("b")
tags.insert("c")
//print(tags)


///Dictionary

var scores: [String:Int] = ["adam": 10, "bob": 12, "alice": 11,"eve": 14]
print(scores)

print(scores["bob"])

scores["adam"] = 99
print(scores)

scores.removeValue(forKey: "eve")
print(scores)

var countryCodes: [String:String] = ["US":"United States",
                                     "IN":"India",
                                     "GB":"United Kingdom",
                                     "FR":"France"]
print(countryCodes)
countryCodes.removeValue(forKey: "FR")
print(countryCodes)

var headers: [String:String] = [:]
headers["Content-Type"] = "application/json"
headers["Authorization"] = "Bearer token"
print(headers)


var arr: [Int] = [1,2,4,455,5]
print(arr)

var mySet: Set<String> = ["A","B","C"]
print(mySet)

var namesDictionary = ["a":100,"b":200,"c":300]
print(namesDictionary)
