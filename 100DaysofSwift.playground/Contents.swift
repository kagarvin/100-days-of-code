import UIKit
                            // ---------- DAY 1: Simple Types ----------

// Variables
var str = "Hello, playground"
str = "Goodbye"

// Strings and Intigers
var int = 7
int = 228_000_000

// Multi-Line Strings
var str2 = """
the quick brown fox\
 jumped over\
 the lazy dog
"""

// Doubles and Booleans
var double = 1.125
var bool = false
bool = true

// String Interpolation
var str_interpolation1 = "this is only a test."
var str_interpolation2 = "this is NOT a test- I repeat, NOT a test."
var str_interpolation3 = "This is a public service announcement, \(str_interpolation1)"
var str_interpolation4 = "This is a public service announcement, \(str_interpolation2)"

// Constants
let constant = "This cannot change."

// Type Annotations
let str3: String = "A String."
let int2: Int = 1
let double2: Double = 9.975
let bool2: Bool = true

// Summary
/*  1. You make variables using var and constants using let.
    2. It’s preferable to use constants as often as possible.
    3. Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
    4. Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
    5. String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
    6. Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want. */


                            // ---------- DAY 2: Complex Types ---------- (Work on distinguishing between the different types, what they're used for, and when to use)

// Arrays - lists!
let thing1 = "Thingy Number One"
let thing2 = "Thingy Number Two"
let thing3 = "Thingy Number Three"
let thing4 = "Thingy Number Four"
let thing5 = "Thingy Number Five"
let array = [thing1, thing2, thing3, thing4, thing5]
array[0]
let array_reverse: [String] = [thing5, thing4, thing3, thing2, thing1]
array_reverse[0]

// Sets - Unlike arrays, stored in random order and all items must be unique (cannot appear more than once)
let set = Set([1, 2, 3, 4, 5]) // see how the output order is not the same as the input?
let set2 = Set([1, 2, 3, 4, 5, 4, 2]) // notice how 4 and 2 only appear in the output once

// Tupples - store several values together in a single value, cannot remove item (fixed sizes) and cannot change item types (same as created)
var tup = (first: "Kayla", age: 24, weightatbrith: 8.2)
tup.0
tup.age
tup.2
let tup2 = (item1: 1, item2: "two", item3: 3.1)
// var tup = (first: "Kayla", age: 24, last: Garvin) - will not work because item type was changed

// Arrays vs. Sets vs. Tuples
// Tuples: a specific, fixed collection of related values where each item has a precise position or name
let address = (house: 7899, street: "118A Street", city: "Delta")
// Sets:  a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly
let elements = Set(["Antimony", "Arsenic", "Aluminum", "Selenium", "Hydrogen", "Oxygen", "Nitrogen", "Rehinum"])
// Array: a collection of values that can contain duplicates, and the order of items matter (most common of all three)
let score = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Dictionaries - like arrays, but items are not stored in an integer position
let definition = [
    "Earth": "The surface of the world as distinct from the sky or sea.",
    "Sea": "A body of water that covers most of the earth's surface.",
]
// Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].

// Dictonary Default Values - This allows us to set a response to reading a non existant value
let defvalex = [
    "First": "1",
    "Second": "2",
    "Third": "3"
]
defvalex["Second"]
defvalex["First"]
// defvalex["Fourth", defualt: "text"] - should return "text", but does not work. Skip for now.

// Creating Empty Collections - Note: Collections are what Swift calls lists
var collections = [String: String]() // empty array to store strings
collections["Stacy's Mom"] = "Has it going on"
var collections2 = [Int]() // empty array to store integers
    // note that empty sets are created differently and that Swift has special syntax for both dictionaries and arrays
var collections3 = Set<String>()
var collections4 = Set<Int>()
    // however you can still create arrays and dictionaries with similar syntax
var collections5 = Dictionary<String, Int>()
var collections6 = Array<Int>()

// Enumerations - also called 'enums' method to define groups of related values in an easy to use way
let enum1 = "Yes"
let enum2 = "Afirmative"
let enum3 = "Yep"
enum enumval {
    case yes
    case no
}
let enum4 = enumval.yes
let enum5 = enumval.no

// Enum associated values - additional information can be attached to values stored in enums
enum enumass {
    case person(name: String)
    case age(num: Int)
    case occupation(work: String)
}
let person = enumass.age(num: 24)

// Enum raw values - assign values to enums so they have meaning; allows for dynamic creation
    // Swift automatically assigns values starting from 0
enum enumraw: Int {
    case first
    case second
    case third
    case fourth
}
var third = enumraw (rawValue: 2)
    // assign a single value to a case and Swift will generate the rest
enum enumraw2: Int {
    case first = 1
    case second
    case third
    case fourth
}

// Summary
/*      1. Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends          on the behavior you want.
        2. Arrays store items in the order you add them, and you access them using numerical positions.
        3. Sets store items without any order, so you can’t access them using numerical positions.
        4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
        5. Dictionaries store items according to a key, and you can read items using those keys.
        6. Enums are a way of grouping related values so you can use them without spelling mistakes.
        7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case. */


                            // ---------- DAY 3: Opperators and Conditions----------

// Arithmetic Operators - (+ - * / %)
var score1 = 30
var score2 = 5
var total = score1 + score2
var difference = score1 - score2
var product = score1 * score2
var divided = score1 / score2
var remainder = score2 % score1
var result = 2 + 2 + 1.0

// Operator Overloading - what an operator does depends on the values you use with it
var meaningofLife = 42
var doublemeaning = meaningofLife * 2
var hello = "Hello, "
var helloworld = hello + "World!"
    // + can be used to join arrays
var scores1 = [80, 75, 75]
var scores2 = [85, 70, 70]
var combscore = scores1 + scores2
    // Note: cannot mix types in Swift

// Compound Assignment Operators - a shorthand way of working on previous operators
var score3 = 90
score3 += 5
var quote = "Do not go gentle "
quote += "into that good night."
    // note, constants cannot be modified

// Comparison Operators - compare values
var score4 = 10
var score5 = 7
score4 == score5 // is the same as
score4 != score5 // is not the same as
score4 < score5 // is less than
score4 >= score5 // is equal to or greater than
"Kayla" <= "Garvin" // compares the number of letters
// if someBoolean == true, can be written as if someBoolean

// Conditions - 'if' statement is true, run the following
let card1 = 10
let card2 = 11
if card1 + card2 == 21 {
    print("Blackjack!")
}
    //
if card1 + card2 < 21 {
    print("Draw?")
}   else {
    if card1 + card2 > 21 {
        print("too bad!")
    } else {
        print("Blackjack!")
    }
}

// Combining Conditions - && and, || or
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
    //
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// the Ternary Operator - works with 3 values at once, if first is true it returns the second value, if false then the third

let card3 = 11
let card4 = 10
print(card3 == card4 ?
    "Cards are the same" : "Cards are different")
    // can be writen using regular condition:
if card3 == card4 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch Statements - requires condition being written once, then list all possible outcomes
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
    // use fallthrough if you want code execution to run beyond the inside of a case
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// Range Operators - allows to specify a set range, ..< excludes final value while ... includes final value
let score6 = 85
switch score6 {
case 0..<50:
    print("I feel your pain")
case 50..<85:
    print("You did good")
default:
    print("You did great!")
}

// Summary
/* 1. Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
   2. There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
   3. You can use if, else, and else if to run code based on the result of a condition.
   4. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
   5. If you have multiple conditions using the same value, it’s often clearer to use switch instead.
   6. You can make ranges using ..< and ... depending on whether the last number should be excluded or included. */


                            // ---------- DAY 4: Looping ----------

// For Loops - continues looping as long as list contains something
let count = 1...10
for number in count {
    print("Number is \(number)")
}
    //
let albums = ["Americana", "Conspiracy of One", "Splinter", "Rise and Fall, Rage and Grace", "Days Go By"]
for album in albums {
    print("\(album) is by The Offspring")
}
    // if you don't use constant provided by for loop, use _
print("Players gonna ")
for _ in 1...5 {
    print("play")
}

// While Loops - continues looping as long as condition is true
var number = 1
while number <= 10 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

// Repeat Loops - a while loop but the check condition comes at the end and will always run at least once
var number2 = 1
repeat {
    print(number2)
    number2 += 1
} while number2 <= 10
print("Ready or not, here I come!")
    // will never run
/*
while false {
    print("This is false")
}
*/
    // this will run once
repeat {
    print("This is false")
} while false

// Exiting Loops
