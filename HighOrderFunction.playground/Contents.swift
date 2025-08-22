import UIKit

var greeting = "Hello, playground"

//Assignment  7
//In Swift playgorund have multiple examples to show usage of below:
//1.Higher order functions


//Use map to convert an array of Celsius temps to Fahrenheit.
var celsiusTemp = [11.2, 25.3, 19.8, 22.4]
let fahrenhietTemp = celsiusTemp.map { $0 * 9.0 / 5.0 + 32.0 }
print(fahrenhietTemp)

//Use filter to extract all odd numbers from [1...20].
var numbers: [Int] = Array(1...20)
//for num in 1...20 {
//    numbers.append(num)
//}
numbers.filter { number in number % 2 != 0 }
print(numbers.filter { $0 % 2 != 0 })

//Use reduce to multiply all numbers in [1,2,3,4].
var numbers2 = [1, 2, 3, 4]
print(numbers2.reduce(0, +))
print(numbers2.reduce(1, *))
print(numbers2.reduce(0, {
    print("current sum: \($0)")
    print("current element: \($1)")
    return $0 + $1 }))



//Use sorted to arrange names alphabetically.
var names: [String] = ["Jin","Alex", "Kai", "Yi"]
names.sorted()
print(names.sorted())
let namesSortByLast = names.sorted{$0.last! < $1.last!}
print(namesSortByLast)
//Given a list of sentences, use flatMap to break them into words.
let mapNames = names.map{Array($0)}
let flatMapNames = names.flatMap{Array($0)}
print(mapNames)
print(flatMapNames)
//
//Generic
//Create Stack for String using Genrics
struct StackString<T> {
    private var items: [T] = []
    mutating func push(_ item: T){
        items.append(item)
    }
    mutating func pop() -> T?{
        items.removeLast()
    }
    func displayStack(){
        print(items)
    }
    func isEmpty() -> Bool{
        return items.isEmpty
    }
    
}

var stackString = StackString<String>()
stackString.push("a")
stackString.push("b")
stackString.push("c")
stackString.push("d")
print(stackString)
stackString.pop()
print(stackString)




//Write a generic function maxValue<T: Comparable>( a: T,  b: T) -> T.
func maxValue<T: Comparable>(a: T, b: T) -> T{
    if a > b {
        return a
    } else {
        return b
    }
}
maxValue(a: 4, b: 5)
print(maxValue(a: 4, b: 5))

//Create a generic Queue<T> type with enqueue and dequeue.
class GenericQueue<T>{
    private var elements: [T] = []
    
    func enqueue(_ element: T){
        elements.append(element)
    }
    func dequeue() -> T? {
        return elements.removeFirst()
    }
}

var ele = GenericQueue<Int>()
ele.enqueue(1)
ele.enqueue(2)
ele.enqueue(3)
print(ele.dequeue()!)
print(ele.dequeue()!)
print(ele.dequeue()!)



//Write a generic function to reverse any array.

func reverseArray<T>(array:[T]) -> Array<T>{
    return array.reversed()
}
    
var array1 = ["a","b","c"]
print(reverseArray(array: array1))
var array2 = [1, 2, 3]
print(reverseArray(array: array2))
//Show use of Genrics for enum
//Show use of Genrics for Class
//
enum Box<T>{
    case filled(T)
    case empty(T)
    
    func describe()-> String{
        switch self{
        case .filled(let item):
            return "Box is \(item)"
        case .empty(let item):
            return "Box is \(item)"
        }
    }
}
var b1 = Box.empty(1000)
print(b1.describe())
var b2 = Box.empty("Empty Box")
print(b2.describe())


enum Season<T>{
    case spring(T)
    case summer(T)
    case fall
    case winter
    
    var messages: String{
        switch self{
        case .spring(let item):
            return "Spring"
        case .summer(let item):
            return "Summer"
        case .fall:
            return "Fall"
        case .winter:
            return "Winter"
        }
    }
}

var spring = Season.spring(10000)
print(spring.messages)

class ValuePair<A, B>{
    var firstValue: A
    var secondValue: B
    
    init(_ firstValue: A, _ secondValue: B) {
        self.firstValue = firstValue
        self.secondValue = secondValue
    }
    
    func describe() -> String{
        return "\(firstValue), \(secondValue)"
    }
}
var valuePair = ValuePair(40, "Apple")
print(valuePair.describe())
var valurPair2 = ValuePair("Banana", 50)
print(valurPair2.describe())




//AssociatedType
//Define a protocol QueueProtocol with an associated type Element.
//Implement IntQueue and StringQueue.
protocol Queue{
    associatedtype Element
    mutating func addElement(_ element: Element)
    mutating func removeElement() -> Element?
}
//struct IntQueue: Queue{
//    private var itemsInt: [Int] = []
//    typealias Element = Int
//    mutating func addElement(_ element: Element) {
//        itemsInt.append(element)
//    }
//    mutating func removeElement() -> Element? {
//        itemsInt.removeFirst()
//    }
//}
//var intQueue = IntQueue()
//intQueue.addElement(1)
//intQueue.addElement(2)
//print(intQueue)
//print(intQueue.removeElement()!)

struct StringQueue: Queue{
    
    private var itemsString: [String] = []
    typealias Element = String
    mutating func addElement(_ element: Element) {
        itemsString.append(element)
    }
    mutating func removeElement() -> Element? {
        itemsString.removeFirst()
    }
}
var stringQueue = StringQueue()
stringQueue.addElement("A")
stringQueue.addElement("B")
stringQueue.addElement("C")
stringQueue.addElement("D")
print(stringQueue)
stringQueue.removeElement()!
print(stringQueue)



//Show 2 differnt examples of AssociatedType usages
protocol Person {
    associatedtype HobbyType
    func hobbies() -> HobbyType
}
struct Student: Person{
    var name: String
    typealias HobbyType = String
    func hobbies() -> HobbyType {
        return "Studying"
    }
}
let s1 = Student(name: "Jin")
print(s1.hobbies())

struct Employee: Person{
    var Id: Int
    typealias HobbyType = String
    func hobbies() -> HobbyType {
        return "Working"
    }
}
let e1 = Employee(Id: 1)
print(e1.hobbies())
