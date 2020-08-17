import UIKit
                            // ---------- DAY 1 ----------

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


                            // ---------- DAY 2 ----------

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

// Creating Empty Collections - 
