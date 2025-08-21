//: [Previous](@previous)

import Foundation

/*
 Extensions - it means adding new functionality to exsisting classes, structs or data types
 
 //O- open for extension but closed for modifications
  benefit?
 can extension store property?
 no,doesn't have any memory

 
 */
extension Int{
    func squareNumber()-> Int{
        return self * self
    }
}

let num = 5
print(num.squareNumber())


class Temperture{
    var celsius: Double = 0.0
    func setTemp(newTemp: Double){
        self.celsius = newTemp
        print(self.celsius)
    }
}

var temp1 = Temperture()
temp1.setTemp(newTemp: 30.0)

extension Temperture{
    func celsiusToFahrenheit(){
        let value = (self.celsius * 9.0 / 5.0) + 32.0
        print("Temp in fahrenheit is \(value)")
    }
}
print(temp1.celsiusToFahrenheit())




enum Season{
    case spring, summer, fall, winter
}

extension Season{
    var description: String {
        switch self {
        case .spring: return "Spring is green!"
        case .summer: return "Summer is yellow!"
        case .fall: return "Fall is orange"
        case .winter: return "Winter is blue"
        }
    }
}

var s1 = Season.spring
print(s1.description)


