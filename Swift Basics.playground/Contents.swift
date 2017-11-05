import UIKit

//: Swift Basics

print ("Hello World!")

//: Variables

var task = "Learning to Code"
print (task)

var love = "I love "
var juice = "orange juice"
print (love + juice + "!")

//: Variables can store names, or strings, and also numbers

var myNumber = 4
var myString = "4"

//: Numbers come in different types: integers (whole numbers) and doubles (decimals)

var myInteger = 2
var myDouble = 2.0
myInteger = 3

//: With code and numbers, we can perform arithmetic operations

var n1 = 18
var n2 = 3
var result = n1 + n2
print (result)

//: We use let when we're sure the variable won't change. let is a constant

let name = "Hodor"

//: If no assigned value, a variable wants to know the kind of data its meant for. We give it a type

var myInteger2: Int
var myDouble2: Double
var myString2: String

//: When using print () to display in the console, Swift automatically adds a link break at the end of the output

var output = "Hello There!"
print (output)
print (output)

//: We use terminator: " " if we don't want a line after the break

var output2 = "Oh Hai!"
print (output2, terminator: " ")
print (output2)

//: Once a variable is decalared, the type of data stored can't be changed

let myGoal = 10
var current = 0
current = 1

//: If no value is given a variable at time of introduction, a type needs to be given. Before use, it needs to be intialized

let myGoal2 = 10
var current2: Int
current = 3
print (current)

//: Increasing numbers

var myNumber2 = 3
myNumber2 += 10
print (myNumber2)

//: Tuples are combinations of values that always appear together

let person = ("Joe", 25)
print (person)
print (person.0)
print (person.1)

//: We can also provide names for tuple members

let person2 = ("Justin", 32)
let (name2, age) = person2
print (name2)
print (age)

//: Tuple members can also be named inside the tuple; more comprehensible

let person3 = (name3: "Layla", age2: 7)
print (person3.name3)
print (person3.age2)

//: Creating a variable that holds nothing, using a ? to indicate no value, is called an optional

var friend: String?

//: The word nil stands for no value. nil can be assigned like any other value

var friend2: String?
friend2 = nil

//: An initial value can be given to an optional variable. In order to check if there is a value, we can create a constant that takes the value from the optional if it has a value

var friend3: String? = "Joe"
if let somebody = friend3 {
    print ("Hey " + somebody)
}

//: Quiz question: what is the output?
var x = 6
x += 1
var y = 3 + x
y += 5
print (y)

//: Boolean (or Bool) is a data type thats speaks the truth and nothing but the truth. Boolean variable can only be true or false

var truth: Bool
truth = true
print (truth)
truth = false
print (truth)

let result2 = 5 > 8
print (result2)

let myNumero = 7
let myBool = myNumero >= 6
print (myBool)

let myNumero2 = 6
let myBool2 = myNumero2 == 6
print (myBool2)

let myBool3 = 5 != 6
print (myBool3)

//: Putting ! before a boolean value, it becomes false if it was true and true if it was false; an inverse value

let philsTruth = true
let myTruth = !philsTruth
print (myTruth)

//: &&, also known as the logical and, connects two boolean values and returns true if (and only if) both of them are true

print (true && true)
print (true && false)

//: The logical or || works as soon as part of the statement is true, the whole statement is true

let bool1 = true || false
let bool2 = false || false
print (bool1)
print (bool2)

let myBool4 = true
let myBool5 = false
print (myBool4.hashValue)
print (myBool5.hashValue)

//: Quiz question: is myNumber greater than 9000?

let myNumber3 = 9001
let myBool6 = myNumber3 > 9000
print (myBool)

//: Quiz question: arrange code so myBool holds value true when printed

var myBool7: Bool
myBool7 = false
var yourBool = myBool7
myBool7 = !yourBool
print (myBool7)

//: If..Else. If statements need Bool-type values to work

let myNumber4 = 6
let myBooly = myNumber4 == 6
if myBooly {
    print ("Yes!")
}

let myBooly2 = 5 > 6
if myBooly2 {
    print ("Sounds legit!")
} else {
    print ("That can't be true!")
}

//: A variable to hold the boolean value isn't needed; can also compare in the if statement

let a = 5
if a == 5 {
    print ("a is 5!")
}

//: else if adds more scenarios, in case a single if statement isn't enoug

let b = 5
if b == 6 {
    print ("b is 6!")
} else if b == 5 {
    print ("b is 5!")
} else {
    print ("Not 5, not 6!")
}

let c = 3
if c != 5 {
    print ("c isn't 5!")
}

let d = "Apples"
let e = "Oranges"
let equal = d == e
print (equal)

//: If can be used to check if optional variables have a value or not

var myOptional: String?
if myOptional == nil {
    print ("Optional is nil!")
}

//: We can also check if an option isn't nil. Adding ! after the optional can force-unwrap its value

var myOptional2: String?
myOptional2 = "I am alive!"
if myOptional2 != nil {
    let value = myOptional2!
    print (value)
}

let f = 1
let g = 2
if f == 1 && g == 1 {
    print ("true!")
} else {
    print ("false!")
}

let myNumero3 = 7
if myNumero3 == 8 {
    print ("Its 8!")
} else {
    print ("Its not 8")
}

//: Quiz question

let h = 5
if h != 5 {
    print ("this")
} else if h <= 4 {
    print ("that")
} else {
    print ("something else")
}

//: Quiz question: order code to display false

let b1 = true
let b2 = !b1
if (b1 && b2) {
    print (b1)
} else if (b1 || b2) {
    print (b2)
}
