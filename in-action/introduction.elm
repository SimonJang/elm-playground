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