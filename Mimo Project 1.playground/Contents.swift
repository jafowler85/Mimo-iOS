//: Playground - noun: a place where people can play

import UIKit

let number = (10, 11)

if number.0 == 10  && number.1 == 10 {
    print ("Guessed Correctly", terminator: " ")
}
else if number.0 == 11 && number.1 == 11 {
    print ("Second try!", terminator: " ")
}
else {
    print ("What's your number?", terminator: " ")
}
print ("The number is \(number).", terminator: " ")
