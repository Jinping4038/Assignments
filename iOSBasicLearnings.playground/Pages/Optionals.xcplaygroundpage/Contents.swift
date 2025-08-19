//: [Previous](@previous)

import Foundation

/*
 Optionals- it means there can be a value or it can be nil
 either there will be a value or absence of value
 
 optionals is enum behinde the scene
 with 2 cases
 case .none(nil)
 case .some(T)(value)
 
 optionals helps us in writting safer and explicitly haldnling possiblity of missing values
 
 - we use optionals in scenrios where values may be uncertain or unavailable
 */


var n1: Int? = 10
//print(n1)


/*
 Optional binding-  it is technique to saftly unwrap optional values and bind them to a new constant or variables
 3 ways to unwrap optional safely
 1. if let
 2. guard let
 3. nil collesing operator
 */

//1. if let
var name:String?
//print(name)
//if let newName = name{
//    print("\(newName)")
//}

var count:Int? = 100
if let myCount = count{
    print("\(myCount)")
}


//2. guard let
func checkUseOfGuardLet(){
    var count: Double? = 90.8

    guard let myCount = count else {
        print("inside else block of guard let")
        return
    }
    print("\(myCount)")
    
}
checkUseOfGuardLet()
print("End of code")


//3. nil collesing operator

var name1:String? = "abc"
print(name1)
print(name1 ?? "default value")

//force unwrapping = !
print(name1!)
