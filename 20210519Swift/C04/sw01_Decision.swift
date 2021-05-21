/*

[ Decision Making ]
===
* concept: branch
* boolean
* truth table

===

*/ 

var x: Int = 5
var y: Int = 6
var b: Bool = true
    
if(x < y)
{

} else {

}

// optionals and forced unwrapping

/*

forced unwrapping:
using ! at the end of the optional'name, to access its value;

the concept is similar to nullable? in C#

*/ 
var myStr = "Hello TS"
let myInt = Int(myStr)
if myInt != nil {
    print("MyInt contains an integer value. here it is:\(myInt!)")
}
else {
    print("MyInt doent contain an integer value.")
}

// optional binding
let myOptional: String? = "hello world"
if let constName = myOptional {
    print("constName contains a value, here it is: \(constName)")
}

/*

| diff |  location  | meaning               |
=============================================
| !var | before var | logical op NOT        |
| var! | after var  | forced unwrapping op  |

*/
 
if var varName = myOptional {
    varName += "!"
    print("varName contains a value, here it is: \(varName)")
}


/*

[ unwrapping ]
===
* forced unwrapping(explicit unwrapping)
* implicit unwrapping
===

*/

var opStr: String? = "My optional string"
var forcedUnwrappedStr: String = opStr!

/*

? why

because of the program's structure,
u know that the optional has a value,
so u can give permission for the optional to be safely unwrapped
whenever it needs to be accessed,

the ! is not needed every time u use it;
instead, u place an ! after the optional type when u declare it.

*/ 
var nextStr: String! = "An implicitly unwrapped optional"
var implicitUnwrappedStr: String = nextStr



