//: [Previous](@previous)
/*:
 ## Functions

 A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing. Below you can see the different structures of a function of how you can write them.
 */
/*:
 - Callout(Structure): This function structure does not include any parameters and does not return anything
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses
 - Open and close braces
*/
func sayHello(){
    print("Hello")
}
/*:
 - Callout(Structure): This function takes in a single parameter and does not return any values
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - **Open and close parentheses with a parameter called 'toPerson' of type `String`**
 - Open and close braces
 */
func sayHello(toPerson: String){
    print("Hello \(toPerson)")
}
/*:
 - Callout(Structure): This function takes in a single parameter and returns a value of type `String`
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses with a parameter called 'toPerson' of type `String`
 - A return value of type `String` represented by the `->`
 - Open and close braces
 */
func sayHello(toPerson: String) -> String{
    return "Hello \(toPerson)"
}
/*:
 - Experiment:
 Try calling all of the functions above. They all have the same function name, but the compiler doesn't complain. Can you think of why this might be?
 */
sayHello()
//sayHello(toPerson: "jason")
//var returnValue = sayHello(toPerson: "tony")
/*:
 - Experiment:
 Try creating your own function that accepts two parameters of any type you choose. Have the function print out the two parameters and test your function.
 */

func printTwoThings(thing1 : String, thing2 : Int){
    print("first string is \(thing1) and second is \(thing2)")
}

printTwoThings(thing1: "whatever", thing2: 46)
/*:
 - Callout(Challenge):
 Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result. Try testing each one afterwards.
 
 */


func add(operand1 : Int, operand2 : Int) -> Int{
    return operand1 + operand2
}
print("sum is \(add(operand1: 5, operand2: 7))")

func subtract(operand1 : Int, operand2 : Int) -> Int{
    return operand1 - operand2
}
print("difference is \(subtract(operand1: 5, operand2: 7))")

func times(operand1 : Int, operand2 : Int) -> Int{
    return operand1 * operand2
}
print("product is \(times(operand1: 5, operand2: 7))")

func divide(operand1 : Int, operand2 : Int) -> Int{
    return operand1 / operand2
}
print("quotient is \(divide(operand1: 5, operand2: 7))")


/*:
 - Callout(Challenge):
 Create your own 'reverse' function that takes in an array of Int, reverses the order of the array, and returns the newly reversed array of Int. The array class has its own 'reverse' method, but do not use it for this challenge.
 */

func reverse(arrayToReverse : [Int]) -> [Int]{
    var newArray : [Int] = []
    
    for index in stride(from: arrayToReverse.count - 1, through: 0, by: -1) {
        newArray.append(arrayToReverse[index])
       
    }
    return newArray
    
}

let arr : [Int] = [2, 4, 6, 8, 10]
print(reverse(arrayToReverse: arr))


/*:
 ## Closures
 
 Closures are also a set of statements grouped together but the closure can be stored and passed around and executed somewhere else.
 
 - Note:
 A closure in Swift is similar to blocks in Objective-C
 */
/*:
 For example, the UIViewController has a 'dismiss' method.
 
 `func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)`
 
 The 'completion' part of it is the completion handler which is a closure. It will execute that block of code when the dismiss action has completed.
 */
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosure'.
 
 - Start with the open braces
 - The first '()' indicates it takes no parameters
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureToPerson'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureToPerson = { (name: String) -> () in
    print("Hello \(name)")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The `'String'` after the arrow indicates it returns a `String` type
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}
/*:
 - Experiment:
 Try calling all of the closures above. What do you notice that is different from calling a function?
 */
sayHelloClosure()
sayHelloClosureToPerson("aaron")
print(sayHelloClosureWithReturn("cassandra"))
/*:
 - Experiment:
 Try creating your own closure that accepts two parameters of any type you choose. Have the closure print out the two parameters and test your closure.
 */

var myClosure = { (param1 : String, param2 : Int) -> String in
    return "my closure says \(param1.uppercased()) and \(param2)"
}

print(myClosure("jason", 20))
/*:
 - Experiment:
 Declare a variable with an explicit closure type: `(String) -> (String)`. This closure type says it takes one parameter of type String and returns a variable of type String.
 */
var challengeClosure = { (input : String) -> String in
    return "something and \(input)"
}



/*:
 - Callout(Challenge):
 Create a closure with at least two parameters of your choice and decide whether or not it returns anything. Then create a function that takes in your closure as a parameter and one additional parameter of your choice.
 */
//: [Next](@next)


var lastClosure = { (num1 : Int, num2 : Int, num3 : Int) -> Int in
    return num1 + num2 + num3
}

func something(firstName : String, someClosure: (Int, Int, Int) -> Int){
    
    
    print("hello \(firstName) --- your sum is \(someClosure(1,2,3))")
}


something(firstName: "jay", someClosure: lastClosure)
