//: Arrays: an ordered list that can store multiple values of the same type. Append can add a variable to an array

var friends: [String]
friends = [String] ()
friends.append ("Joe")
print (friends)

var crew: [String]
crew = ["joe", "anna"]
print (crew)

let numbers = [1,2,3]
let numbers2 = [1.2, 3.4, 5.6]
print (numbers)
print (numbers2)

//: We can add to the array using the += operator. We can also count the number of values in an array. We can also pull a particular value

var myLetters = ["a", "b"]
myLetters += ["c"]
print (myLetters.count)
let myLetter = myLetters [0]
print (myLetter)

//: An array can tell us whether it is empty

let myArray = [Int]()
let empty = myArray.isEmpty
if empty {
    print ("myArray is empty!")
}

//: We can remove a value from an Array. We can also replace a value that is out of place. We can also insert a value into a specific spot

var myArray1 = [1, 2, 99, 3, 4]
myArray1.remove(at: 2)
print (myArray1)

var myArray2 = [1, 2, 3, 1, 5]
myArray2 [3] = 4
print (myArray2)

var myArray3 = [1, 2, 3, 5]
myArray3.insert (4, at: 3)
print (myArray3)

//: Quiz question: Order code to print Hey!

var myArray4: [String]
myArray4 = [String]()
myArray4.append ("Hey!")
print (myArray4)

//: Arrays are zero-based values

//: Quiz question: make code replace Charlie with Walden

var men = ["Alan", "Jake"]
men.insert("Charlie", at: 0)
men [0] = "Walden"
print (men)

//: Quiz question: what will this print to the console?

var buddies = ["Harry", "Hermione"]
buddies.insert ("Ron", at: 1)
buddies.append ("Neville")
print (buddies)

/* Dictionairies: an unordered list of values of a single type. Every value in
dictionary needs a key and then to be declared */

var myDict: [String: String]
myDict = [String: String]()

/* In order to add values to a dictionary , we can assign keys with values,
so-called key-value pairs, in brackets */

var myDict2: [Int: String]
myDict2 = [1: "a", 2: "b"]
myDict2 [3] = "c"
print (myDict2.count)

//: Accessing values

let myDict3 = [1: "a", 2: "b"]
if let value = myDict3 [2]{
  print (value)
}


//: A dictionary can also tell us if it is empty

let myDict4 = [Int: String]()
let empty2 = myDict4.isEmpty
if empty2 {
  print ("Dictionary is empty!")
}

//: We can remove a value and also replace a value

myDict2.removeValue (forKey: 1)
print (myDict2)

myDict2[2] = "a"
myDict2[3] = "b"
print (myDict2)

//: There is another way to replace, or update, a value.

var d = [1: "a", 10: "b"]
d.updateValue ("j", forKey: 10)
print (d)

//: Quiz question: order code to display "No"

var e = [1: "Yes"]
e.updateValue ("No", forKey: 1)
if let content = e[1] {
  print (content)
}

//: Quiz question: order this code to add, print, and remove a key value. Note: Mimo fucked this up...

var myDictionary = [Int: String]()
myDictionary [4] = "John"
print (myDictionary[4])
myDictionary.removeValue (forKey: 4)
print (myDictionary)

//: Quiz question: what will this code display?

var fleet = ["Admiral": "Ackbar"]
fleet.removeValue(forKey: "Ackbar")
if fleet.isEmpty {
  print ("Nothing to print!")
} else {
  print (fleet)
}

//: Strings

let str1 = "We're learning "
let str2 = "very quickly"
let result = str1 + str2
print (result)

//: Combined strings can be stored in a new variable, or added to an existing variable

var str3 = "He only talks about "
let str4 = "fake news."
str3 += str4
print (str3)

//: Checking length of a string value

let str5 = "Harry"
let length = str5.characters.count
print (length)

//: Checking to see if a string is empty

let str6 = ""
if str6.isEmpty {
print ("String is empty")
}

//: String interpolation

let f = 16
let g = "Paul"
let h = false
let string = "f is \(f), g is \(g), h is \(h)"
print (string)

//: We can also perform arithmetic within a string

let i = 4
let j = 2
let result2 = "result2 = \(i * j)"
print (result2)

/* A string is an ordered collection of characters. If we want a variable
to take only a single charater, we must declare it as such using Character */

let myCharacter: Character = "a"
var myString = "b"
myString.append ("c")
print (myCharacter)
print (myString)

//: We can only append a character to a string. We can also append strings to strings

var str7 = "Swift"
str7.append (" is rad")
print (str7)

//: At time, joining values of an arry into a single string can be useful

let k = ["a", "b", "c"]
let str8 = k.joined (separator: "-")
let str9 = k.joined (separator: "+")
print (str8)
print (str9)

//: a string can tell us whether it starts with a particular value, or pre-fix

let str10 = "Mr. Boole"
if str10.hasPrefix ("Mr.") {
  print ("Hello sir!")
}

//: A string variable can also tell us if it ends with another string value, or suffix

let str11 = "Tywin Lannister"
if str11.hasSuffix ("Lannister") {
  print ("House Lannister")
}

//: Quiz question: what will this code print to the console?

let r: Character = "D"
let str12 = "RUM"
var str13 = "RE"
str13.append (r)
str13.append (str12)
print (str13)

//: Quiz question: what will this cose print to the console?

let l = ["B", "A", "D"]
let str14 = "Brea"
let str15 = l.joined (separator: "-")
print (str14 + "king " + str15)

//: Order these code snippets to validate if the value of url is a porper url

var url = "www.getmimo.com"
if url.hasPrefix ("www.")
&& url.hasSuffix (".com") {
  print ("Valid!")
} else {
  print ("Possibly invalid")
}

//: Quiz question: What will this code print to the console?

let m = "Mr. White"
if (m.hasSuffix ("White")) {
  print (m + " broke bad")
} else {
print (m + " went straight")
}

//: Loops: a for loop can execute a block of code for as often as we want

for index in 1...4 {
  print (index, terminator: "")
}
//: ... operator creates a for loop with a close range. ..< creates a half open range

for index1 in 1 ..< 4 {
  print (index1, terminator: "")
}

//: Using a for loop to sum up numbers

var myNumber = 0
print (myNumber, terminator: "")
for i in 1...3 {
  myNumber += i
  print ("+\(i)", terminator: "")
}
print ("=\(myNumber)")

//: Fibonacci Sequence: every number in the sequence is the sum of the previous two numbers

var p1 = 0
var p2 = 1
print ("\(p1) \(p2)", terminator: " ")
for index2 in 1...6 {
  var n = p1 + p2
  print (n, terminator: " ")
p1 = p2
p2 = n
}

//: We can use a for loop with an array to iterate over its values

let myArray5 = [1, 2, 3, 4]
for v in myArray5 {
  print (v, terminator: " ")
}

//: A for loop can also be used to iterate over key-value pairs of a dictionary

let myDict5 = [1 : "a", 2 : "b"]
for (key, value) in myDict5 {
  print (key, terminator: "->")
  print (value, terminator: " ")
}

//: A while loop is executed as long as a certain condition is myLetters

var myCounter = 0
while myCounter < 4 {
print (myCounter, terminator: " ")
myCounter += 1
}
print ("Done!")

/* A repeat-while loop is similar, except that it runs its code block at least once,
as the condition is checked at the end of the loop */

var myCounter2 = 100
repeat {
  print (myCounter2, terminator: " ")
  myCounter2 += 1
} while myCounter2 < 5

//: A loop can be put inside another loop, called nesting

for n in 1...5 {
  var o = 1
  while o < 3 {
    print (o, terminator: "")
    o += 1
  }
  print (" ", terminator: "")
}

//: Quiz question: order the code snippets to work without crashing

var myCounter3 = 0
repeat {
  myCounter3 += 1
  print (10 / myCounter3)
} while myCounter3 < 10

//: Quiz question: what will this code print to the console?

var myCounter4 = 0
while myCounter4 < 10 {
  print (myCounter4, terminator: " ")
  myCounter4 += 1
}

//: Quiz question: order the code snippets to sum up the numbers

var mySum = 0
for n in 1...10 {
  mySum += n
  print (mySum)
}
