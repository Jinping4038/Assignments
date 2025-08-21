import UIKit
import Foundation


//In Swift playgorund have multiple examples to show usage of below:
//1.Closures and its types
// Write a closure that multiplies two Ints and assign it to a variable.
func multiplyTowNumbers(num1: Int, num2: Int, multiply:(Int)->()){
    let value = num1 * num2
    multiply(value)
}

multiplyTowNumbers(num1: 4, num2: 4, multiply: {result in
    print("Result is \(result)")
})

// Implement makeCounter() that returns a closure incrementing an internal count.
func makeCounter() -> () -> Int{
    var count = 0
    return {
        count += 1
        return count
    }
    
}
let c1 = makeCounter()
print(c1())
print(c1())



// Build performLater(_:) using @escaping and DispatchQueue to run after 1s.
@MainActor
func performLater(delay: TimeInterval, _ doTask: @escaping ()->()){
    DispatchQueue.main.asyncAfter(deadline: .now() + delay){
        doTask()
    }
    print("End of the program. Task happens later.")
}

performLater(delay: 3){
    print("Do Task.")
}

// Write a function retry(times:action:) that executes an escaping closure up to N times until it returns true.
@MainActor
func retry(_ times: Int, _ action: @escaping () -> Bool){
    if times > 0 {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            if !action() {
                retry(times - 1, action)
            } else {
                print("Action is true")
            }
        }
    } else if times == 0 {
        print("Ran out of times.")
    }
}

retry(5){
    print("Retry")
    return Bool.random()
}
