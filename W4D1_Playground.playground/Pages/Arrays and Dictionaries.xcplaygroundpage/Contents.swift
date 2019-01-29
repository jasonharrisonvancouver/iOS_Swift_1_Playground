//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
var seasons = ["summer", "fall", "winter"]
seasons.append("spring")

var countries = ["ca" : "canada", "us" : "united states of america"]
countries["ch"] = "china"

print(countries)

/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var cities : [String]
//cities.append(5)

/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
var people :[String:String]

/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
var awesomePeople = ["feynman", "godel", "von neumann"]
awesomePeople.append("gretzky")
awesomePeople.insert("obama", at: 1)

awesomePeople.remove(at: 0)
awesomePeople.reverse()
print(awesomePeople)
print("There are \(awesomePeople.count) awesome people")
awesomePeople.removeAll()
/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
var years=[2018:"engaged", 2019:"cuba", 2015:"disneyland"]
print(years)
years.removeValue(forKey: 2015)
print(years)
print("interesting moments: \(years.count)")

/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
var names:[String] = []

names.append("John")
names.append("Karen")
names.append("Jane")
let indexOfJohn = names.firstIndex(of: "John")
print("person at index \(String(describing: indexOfJohn)) is \(names[0])")

let indexOfKaren = names.firstIndex(of: "Karen")
print("person at index \(String(describing: indexOfKaren)) is \(names[1])")


let indexOfJane = names.firstIndex(of: "Jane")
print("person at index \(String(describing: indexOfJane)) is \(names[2])")
/*:
 - Callout(Challenge):
 Declare a mutable dictionary with the following names and their salaries
 
 John - $50000
 
 Jane - $70000
 
 Karen - $62000
 
 On the next line, add this last person's info: Bob - $45000
 */
var salaries:[String:Int] = ["John":50000, "Jane":70000, "Karen":62000]
salaries["Bob"] = 45000


/*:
 - Callout(Challenge):
 Declare a mutable dictionary with the following names and their salaries
 
 John - $50000
 
 Jane - $70000
 
 Karen - $62000
 
 On the next line, add this last person's info: Bob - $45000
 */



/*:
 - Callout(Challenge):
 Declare a mutable dictionary with the following names and their salaries
 
 John - $50000
 
 Jane - $70000
 
 Karen - $62000
 
 On the next line, add this last person's info: Bob - $45000
 */

/*:
 - Callout(Challenge):
 Declare a mutable dictionary with the following names and their salaries
 
 John - $50000
 
 Jane - $70000
 
 Karen - $62000
 
 On the next line, add this last person's info: Bob - $45000
 */

/*:
 - Callout(Challenge):
 Declare a mutable dictionary with the following names and their salaries
 
 John - $50000
 
 Jane - $70000
 
 Karen - $62000
 
 On the next line, add this last person's info: Bob - $45000
 */


//: [Next](@next)
