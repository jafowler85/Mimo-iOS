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

/* Functions: a named block of code, which we can call on by using its name
by using its name and adding parentheses */

print ("Hello World!")

/* There are built-in funtions, like print (), but we can, and often have to,
create custom functions */

func sayHi() {
  print ("Hi!")
}
sayHi()

/* If we need a code block more often, its a good idea to make it a function.
Once we have it, we can always reuse it */

func sayHi(to: String) {
  print ("Hi \(to)!")
}
let person1 = "Jon"
let person2 = "Dany"
sayHi(to: person1)
sayHi(to: person2)

//: Parameters help us adapt the behavior of functions to different situations

func sayHi(to: String, and: String) {
  let str16 = "Hi \(to) and \(and)!"
  print (str16)
}
let person3 = "Ben"
let person4 = "Leia"
sayHi (to: person3, and: person4)

/* If a function manipulates a value, it might be a good idea to return the
result of the operation */

func double(number: Int) -> Int {
  let result3 = number * 2
  return result3
}
let myNumber1 = double(number:13)
print ("myNumber1 is \(myNumber1)")

//: We can also return tuples

func createTuple() -> (Int,Int){
  return (1, 2)
}
let (a, b) = createTuple()

//: We can pass an array to a function as well

func sayHi(to: [String]){
  for person5 in to {
    print ("Hi \(person5)!")
  }
}
let myFriends = ["Luke", "Leia"]
sayHi(to: myFriends)

//: We can also pass and return Dictionairies

func createDict() -> [Int: String]{
  return [1: "a", 2: "b"]
}
let myDict6 = createDict()
print (myDict6)

//: In some cases, a variable number of Parameters comes in handy

func totalize(numbers: Int...) {
  var total = 0
  for p in numbers {
    total += p
  }
  print (total)
}
totalize(numbers:1, 4, 9)
totalize(numbers:1, 4, 9, 10)

//: A function within a function

func walk(steps: Int) {
  var walked = 0
  func addSteps(steps: Int) {
    walked += steps
  }
  addSteps(steps:steps)
  print ("Walked \(walked) steps")
}
walk(steps: 3)
walk(steps: 5)

/* Normally, we need to use the name of every parameter when calling a function.
If thats not what we want, we add an underscore before it and skip the name */

func totalize(_ numbers: Int...) {
  var total = 0
  for q in numbers {
    total += q
  }
  print (total)
}
totalize (8,1,5)

/* What if we want to use a readable parameter name to call a function but a
more descriptive name within the function? */

func sayHi1(to people: [String]) {
  for person in people {
    print ("Hi \(person)!")
  }
}
let myFriends1 = ["Ben", "Leia"]
sayHi(to: myFriends1)

//: Quiz question: order the code snippets to become a proper function

func triple(r: Int) -> Int {
  var result1:Int
  result1 = r * 3
  return (result1)
  }

//: Quiz question: what will this code print to the console?

func walk1(steps: Int) {
  var walked = 0
  func addSteps(steps: Int) {
    walked += steps
  }
  addSteps(steps:steps)
  print (walked)
}
walk(steps: 5)

//: Quiz question: Order the code snippets to result in a working function

func reverse(s: String) -> String {
  var str17 = ""
  for t in s.characters {
    str17 = "\(t)" + str17
  }
  return str17
}

/* Classes: a class is like a blueprint that outlines things that objects of the
sort have in common, like certain properties */

//: Each unique instance with properties in a class can be adapted

class Human {
  var name1 = ""
  var age1 = 0
}
var me = Human ()
me.name1 = "Justin"
print (me.name1)

//: properties can also be set at the time the instance is created

class Human1 {
  var name2 = ""
  var age2 = 0
  init(name2: String, age2: Int) {
    self.name2 = name2
    self.age2 = age2
  }
}
var u = Human1 (name2: "Justin", age2: 32)

//: If we use an initializer to set values, we no longer need default values

class Human2 {
  var name3: String
  var age3: Int
  init(name3: String, age3: Int) {
    self.name3 = name3
    self.age3 = age3
  }
}
var v = Human2 (name3: "Layla", age3: 7)

//: Objects don't just have properties, they also have behavior. Functions take care of behavior

class Car {
  var engineStarted = false
  func startEngine () {
    print ("Vroom!")
    engineStarted = true
  }
}
var myCar = Car ()
myCar.startEngine ()

//: We need to initalize every property in a class, unless it is an optional

class Car1 {
  var color: String?
  var mileage: Int
  init() {
    self.mileage = 0
  }
}
var myCar1 = Car1 ()
print (myCar1.color)

/* A class can inherit the properties and behaviors from another class.
Known as a subclass. Subclass can use the properties it inherits from its superclass */

class Car2 {
  var color1 = "Green"
}
class Racecar: Car2 {
  var nitro: Bool?
}
var myCar2 = Racecar ()
myCar2.color1 = "Red"
print (myCar2.color1)

//: The same applies to inherited functions: we can call them just like normal functions

class Car3 {
  func wash() {
    print ("Car wash, baby!")
  }
}
class Racecar1: Car3 {
  // Race car things
}
var myCar3 = Racecar1 ()
myCar3.wash()

/* At times, its necessary for a subclass to change an inherited fucntion
to fit its particular needs. When we override a function, the original function
becomes hidden. But, we can still access it */

class Animal {
  func makeSound () {
    print ("Arf!")
  }
}
class Dog: Animal {
  override func makeSound () {
    super.makeSound ()
    print ("Woof!")
  }
}
var myDog = Dog ()
myDog.makeSound ()

/* Before we can change any values of inherited properties, we need to call
the suplerclass's initializer and allow it to set its initial values. Only after
we allow the initializer of Animal1 class to set its values, we can override them */

class Animal1 {
  var airborne = false
}
class Bird: Animal1 {
  override init() {
      super.init()
        self.airborne = true
      }
}

//: Quiz question: order the code snippets to become a proper class

class Human3 {
  var name4: String
  init(name4: String) {
    self.name4 = name4
  }
}
