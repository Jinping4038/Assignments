//: [Previous](@previous)

import Foundation

/*
 Conditional statments:
 1. if
 2.if else
 3. if elseif else
 4.guard
 5.switch
 6.Ternary opeartor
 
 */
// 1. if

var isCorrect = false

if isCorrect {
//    print("condition is true")
}

var num = 25

//if num < 40{
//    print("num is \(num)")
//}
//print("End of code")


//2.if else
//if num < 40{
//    print("num is \(num)")
//}else{
//    print("Its invalid num")
//}

//var name = [1,2,3,4,5]
//if !name.isEmpty{
//    print("please enter name")
//}else{
//    print("persons name is \(name)")
//}



//4.guard- it is used for early exit

let number = -5
func studyGuardStatment(){
    
    guard number > 0 else {
        print("number is invalid")
        return
    }
    print("continue the code")
    print(number)
}
//studyGuardStatment()
print("eoc")
//3. if elseif else

//if score >= 90{
//    print("Grade A")
//}else if score >= 80{
//    print("Grade B")
//}else if score >= 70 && score <= 75{
//    print("disction")
//}
//else if score >= 70{
//    print("Grade C")
//}else if score < 35{
//    print("fail")
//}else{
//    print("pass")
//}



let score = 85


//switch score{
//    case 90...:
//        print("Grade A")
//    case 80...:
//        print("Grade B")
//    case ..<35:
//        print("fail")
//    default:
//        print("pass")
//}


let value = 11
//switch value{
//    case let x where x % 2 == 0:
//        print("Even number \(value)")
//    default:
//        print("Odd num")
//}

let names = "xyz"
//switch names{
//    case "abc":
//        print("name is \(names)")
//    default:
//        print("wrong name")
//}


//6.Ternary opeartor- its a shorthand for if else condition
let age = 10

let msg:String
if age >= 18{
    msg = "Adult"
}else{
    msg = "Minor"
}

//let msg = age >= 18 ? "Adult" : "Minor"
print(msg)
