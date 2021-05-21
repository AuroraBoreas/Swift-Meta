/*

[ Data ]
===
* Bits
* Bytes
* Hexadecimal
* Unicode

* Data Types
    * Char
    * Short
    * Integer
    * Long

    * Float
    * Double
    
    * Byte
    * Boolean
    * Decimal

    * String

* key words
    * var
    * let (means const in Swift. totally different animal in JS)

* type conversion
    * implicit vs explicit
    * downcasting vs upcasting

===
*/ 

import cocoa

var x: Int = 10
var y: Int = 2
var z: Int = 0

var submarineName: String = "CN Nevada SSBN-733"

/*
[ optionals ]
===
* concept: nullable type in C#
* optionals type means a variable may or may not have a value assigned to it
* nil: similar concept in C++, nullptr; or null in C#, or None in Python etc;
* but nil in Swift is not a pointer.
* so it behaves like null in C#;
===
*/ 

let myString1 = "42"
let myInt1    = Int(myString) // compile OK

// vs

let myString2 = "Hello world!"
let myInt2    = Int(myString2) // Error out


// string interpolation

print("my Int1 = \(myInt1)")

