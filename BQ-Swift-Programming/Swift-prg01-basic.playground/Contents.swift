import UIKit

// data types
let x = 8
var y = 10

var a = 9, b = 8.0, c = "Hello"

// data structures: tuples

var myWife = ("LM", 37)

let (name, age) = myWife
name
age

myWife.0
myWife.1

// why tuple?
let myScore = (98, 87, 95) // readibility not good

let _myScore = (math:98, physics:87, chemitry:95)

_myScore.math
_myScore.physics
_myScore.chemitry

// data type: optionals

