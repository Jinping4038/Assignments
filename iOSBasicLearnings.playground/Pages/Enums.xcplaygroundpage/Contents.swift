//: [Previous](@previous)

import Foundation
/*
 Enums- Group of related own custom data types
 */

enum Direction{
    case north
    case south
    case east
    case west
}

var dir = Direction.west

//print(Direction.east)
//print(Direction.north)

func tellMeDirection(direction:Direction){
    if direction == .east{
       print("We are heading to east direction")
    }else{
        print("wrong direction")
    }
}
//tellMeDirection(direction: dir)

enum Days:Int{
    case day1 = 2
    case day2
    case day3
    case day4
    case day5
    case day6
}

//print(Days.day1.rawValue)

enum Weekdays: CaseIterable{
    case mon, tue, wed, thu, fri
    case sat, sun
    
    var numberOfDays: Int{  //computed property
        return 7
    }
    
    func dayType() -> String{ //function inside enum
        switch self{
        case .mon, .tue, .wed, .thu, .fri:
            return "Weekdays"
        case .sat, .sun:
            return "Weekend"
        }
    }
}
print(Weekdays.mon.numberOfDays)
print(Weekdays.sun.dayType())

for day in Weekdays.allCases{
 //   print(day)
}

//types of enum
//1. Raw value enum
//2. Associated Type Enum

//1. Raw value enum
enum VehicalBrand:String{
    case toyota = "Known for its high quality"
    case mercedes = "Known for its class"
    case hond = "known for its varients"
    case ford
}
//print(VehicalBrand.ford.rawValue)
var brand: VehicalBrand?

enum StatusCodes:Int{
    case Sucess = 200
    case userNotFound = 404
    case serverError = 500
}
//let code = StatusCodes.userNotFound.rawValue
//if code == StatusCodes(rawValue: 200)?.rawValue ?? StatusCodes.userNotFound.rawValue{
//    print("We got the needed response")
//}
//print("got failure")


/////2. Associated Type Enum
enum VehicalPrices{
    case highEnd(price:Double)
    case lowEnd(price:Int)
    case midRange(type:String)
    case notPricing
}
//print(VehicalPrices.midRange(type: "electric"))

func getVehicalPrices(range:VehicalPrices){
    switch range{
    case .highEnd(price: let price):
        print("The car is costly having value \(price)")
    case .lowEnd(price: let price):
        print("The car is low bidget having value \(price)")
    case .midRange(type: let type):
        print("The car is of type \(type)")
    default:
        print("not buying a car")
    }
}
getVehicalPrices(range: VehicalPrices.highEnd(price: 100000.0123))
getVehicalPrices(range: VehicalPrices.lowEnd(price: 123))

getVehicalPrices(range: VehicalPrices.midRange(type: "Hybrid"))
getVehicalPrices(range: VehicalPrices.notPricing)


//
enum Theme:String{
    case light
    case dark
    case system
}

enum PlayerState{
    case playing(track:String)
    case paused
    case stopped
}

enum NetworkError:Error{
    case parsingError
    case dataNotFound
    case invalidResponse(_ code:Int)
}

enum NetworkResponse{
    case success([String:Any])
    case failure(Error)
}
 
func doAPICall(url:String) -> NetworkResponse{
    //
    return .success(["name":"alBrand"])
    return .failure(NetworkError.invalidResponse(404))
}
