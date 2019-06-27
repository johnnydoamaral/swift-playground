

import Foundation


var name:String? //This is an Optional type holding a String, not a raw String type

if name == nil {
    print("Name not informed.")
}

name = "Johnny"

if name != nil {
    print("Name is now informed.")
}

print("Name value, wrapped:", name) //This will print an Optional, not a String

//To properly print the name value, you have to unwrap the String from the Optional using Optional Binding
if let nameValue = name {
    print("Name value now unwrapped:", nameValue)
}

//The same could be accomplished with VAR instead of LET, but VAR should only be used if you need to mutate the value at some point
if var nameValue2 = name {
    print("Name value after unwrapping it to a var:", nameValue2)
}

//You can also unwrap the String from the Optional by forcing the unwrap using an exclamation point after the variable,
//but that is totally NOT RECOMMENDED because the value can be NIL and crash your application
print("Name value forcing the unwrap:", name!)
