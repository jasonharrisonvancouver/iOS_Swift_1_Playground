//: [Previous](@previous)
/*:
 ## For Loops

 For loops are a way to repeat a set of statements a certain number of times.
 
 - Note:
 The traditional 'C-style' loop does not exists in Swift anymore: `for ( int i = 0; i<10; i++ )`. Instead, you create for loops that perform your set of statements for each item in a range or collection.
 */

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

/*:
 We can declare a for loop using a range with a lower bound and upper bound
 - Example: `2...5` or `2..<5`
 */

for i in 2...5 {
    print("My Current Index: \(i)")
}

/*:
 - Experiment:
 What's the difference between `2...5` vs `2..<5`?
 */
// ... includes 5
// ..< stops at 4

/*:
 - Experiment:
  Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index.
 */
for i in 0 ..< pets.count{
    if pets[i] == "pig"{
        print ("\(i)")
    }
}

/*:
 - Experiment:
 Create an array of random numbers of your choosing then make a for loop that adds 1 to each number.
 */
var randomNums  = [17, 40, 12]

for j in 0 ..< randomNums.count{
    randomNums[j] = randomNums[j] + 1
}

print(randomNums)

/*:
 - Experiment:
 Take a look at the example below. Modify the code so that it searches for both the largest and smallest number. Then print out the result.
 */

/*:
 Hint: Use an `_` so that you can avoid making another unecessary variable for the iteration value.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("largest is \(largest)")



var smallest = Int.max
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number < smallest {
            smallest = number
        }
    }
}
print("smallest is \(smallest)")


/*:
 - Callout(Challenge):
 Given a number `N`, from 0 to `N`, add up all the odd numbers and print out the result.
 ie: N = 5, 1+3+5 = 9
 */

var sum = 0
var n = 30

for k in 1...n{
    if k % 2 == 1{
        sum+=k
    }
}
print(sum)

/*:
 - Callout(Challenge):
 Given the following array of numbers, determine the frequency of each number using a for loop.
 
 ie: [1, 2, 1, 3, 3, 1, 1, 1]
 
 1: Occurs 5 times
 
 2: Occurs 1 time
 
 3: Occurs 2 times
 */

let numberArray : [Int] = [1, 4, 5, 5, 5, 3, 2, 1, 4, 2, 2, 2, 1]

var occurrencesDictionary : [Int:Int] = [:]


var currentNumber = -1
var numberOfOccurences = 0
for p in 0 ..< numberArray.count{
    currentNumber = numberArray[p]
    if occurrencesDictionary[currentNumber] != nil{
        occurrencesDictionary[currentNumber] = occurrencesDictionary[currentNumber]! + 1
    }else{
        occurrencesDictionary[currentNumber] = 1
    }
    
}

print(occurrencesDictionary)
