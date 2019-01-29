//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */
var carTuple1 = (make: "lamborghini", model: "aventador", year: 2019, color: "black")
var carTuple2 = (make: "dodge", model: "charger", year: 2013, color: "yellow")

/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */

var carsTuple = ("bob's used cars", carTuple1, carTuple2)

/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
    "Counting": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
]
for (kind, numbers) in interestingNumbers {
    print("kind of numbers: \(kind)")
    print(numbers)
//    for(n in numbers){
//       print(n)
//   }
    print("\n")
}

/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
func someFunction(name : String, age: Int, eligable : Bool) -> (String, Int)?{
    if eligable{
        return (name, age)
    }else{
        return nil
    }
}



/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    //...
    
    func numberOfMonthsBetween(month1 : Months, month2 : Months) -> Int{
        if(month1.rawValue >= month2.rawValue){
            return month1.rawValue - month2.rawValue
        }else{
            return month2.rawValue - month1.rawValue
        }
    }
    
    func abbreviatedStringForm() -> String {
        switch self {
        case .January:
            return "Jan"
        case .February:
            return "Feb"
        case .March:
            return "Mar"
        case .April:
            return "Apr"
        case .May:
            return "May"
        case .June:
            return "Jun"
        case .July:
            return "Jul"
        case .August:
            return "Aug"
        case .September:
            return "Sep"
        case .October:
            return "Oct"
        case .November:
            return "Nov"
        case .December:
            return "Dec"
            
//            default:
//                return ""
        }
    }
}

//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January.rawValue
let marchMonth = Months.March.rawValue

/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */
// zero-indexed

/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */


/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */


/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/
enum RockPaperScissorsShapes: Int{
    case Rock
    case Paper
    case Scissors

    func getWinnerBetween(shape1 : RockPaperScissorsShapes, shape2 : RockPaperScissorsShapes) -> RockPaperScissorsShapes?{
        if(shape1 == RockPaperScissorsShapes.Rock){
            if(shape2 == RockPaperScissorsShapes.Paper){
                return RockPaperScissorsShapes.Paper
            }else if(shape2 == RockPaperScissorsShapes.Scissors){
                return RockPaperScissorsShapes.Rock
                
            }else{
                return nil
            }
        }else if(shape1 == RockPaperScissorsShapes.Paper){
            if(shape2 == RockPaperScissorsShapes.Rock){
                return RockPaperScissorsShapes.Paper
            }else if(shape2 == RockPaperScissorsShapes.Scissors){
                return RockPaperScissorsShapes.Scissors
                
            }else{
                return nil
            }
        }else{
            if(shape2 == RockPaperScissorsShapes.Paper){
                return RockPaperScissorsShapes.Scissors
            }else if(shape2 == RockPaperScissorsShapes.Rock){
                return RockPaperScissorsShapes.Rock
                
            }else{
                return nil
            }
        }
    }
    
    func getSymbol(shape : RockPaperScissorsShapes) -> String?{
        if shape == RockPaperScissorsShapes.Rock{
            return "👊"
        }
        
        if shape == RockPaperScissorsShapes.Paper {
            return "✋"
        }
        
        if shape == RockPaperScissorsShapes.Scissors {
            return "✌️"
        }
        return nil
    }
}

//: [Next](@next)
