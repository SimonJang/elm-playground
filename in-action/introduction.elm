import List
import Tuple
import Basics

-- Example String Filter + Function
-- String.filter is a higher order function that accepts other functions as arguments

charFilter s = s /= '-' -- Utility function

String.filter charFilter "81-01-02" -- Will return "810102"


-- Using the `let` expression
-- This allows to add locally scoped named values to an expression
-- In a multiline let-expression, the let and in keywords must be at the same indentation level, and all other lines in the let-expression must be indented further than they are!

str "81-01-02"

withoutDashes arg =
    let
        dash =
            '-'

        isKeepable char = char /= dash
    in
    String.filter isKeepable str

-- After the `in`, the names valuies between `let` and `in` are no longer in scope
-- Execute the filtering
withoutDashes str


-- Anonymous functions
-- Calculate the width and height
\w h -> w * h

-- Using an anonymous function in a higher order function
String.filter (\char -> Char.isDigit char) "1a1a" -- Will return 11

-- Operators are functions

(/) 7 2 -- Will return 3.5

-- Array and Lists don't have method on the object but require to use the methods from the module\
-- All the methods of Array and List live in their respective module

List.length [1, 2, 3] -- returns 3
[1, 2] ++ [3, 4] -- concats 2 lists together
0 :: List.range 1 5 -- returns [0, 1, 2, 3, 4, 5]

-- Records aka Objects

user = { name = "Simon", firstName = "Foo" }
user.name -- returns "Simon"

newUser = {user | name = "newUser"} -- Creates a new value based on an existing record and overwrites a specific field

-- Tuples
-- Why tuples over records? A `tuple` is a record-like value whose fields are accessed by position rather than by name
-- You cannot access tuples by their named fields
-- Tuples or more then 3 elements are not accepted in Elm

myTuple = ("Simon", 30)

-- These functions only work on tuples with 2 records
Tuple.first myTuple -- will return "Simon"
Tuple.second myTuple -- will return 30

-- When the tuples have more then 2 fields, destructuring is needed
multiplyBy3D (x, y, z) = x * y * z

multiply2D someTuple = let (x, y) = someTuple in x * y
