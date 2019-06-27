//: [Previous](@previous)

import Foundation

//Array declarations
var array = ["Apple", "Banana", "Strawberry", "Orange"]
var explicitArray:[String] = ["Apple", "Banana", "Strawberry", "Orange"]
var fullFormArray:Array<String> = ["Apple", "Banana", "Strawberry", "Orange"]
var anEmptyArray = [String]()
var anEmptyArrayFullForm = Array<String>()

print("Array's content:", array, "\n")

//Indexes start at position 0
if array[0] == "Apple" {
    print("Index 0 holds the value \"Apple\".\n")
}

//To get the arrays' length use the count() method
print("Array length is:", array.count, "\n")


//To add new elements to the array use the append() method
array.append("Mango")

print("Array content after new member is added:", array, "\n")
print("New array element: \"\(array[array.count-1])\"\n")
print("Array length is now:", array.count, "\n")

//To remove elements from the array use the remove() method
array.remove(at: array.count-1)
print("Array content after last element is removed:", array, "\n")

//Replacing a value in the array
array[0] = "Pineapple"
print("Array content after inserting a new value at position 0:", array, "\n")

print("Printing the array in a for-loop:\n")
for e in array {
    print(e) //printing element e
}

print("\nUsing the indexes of the elements in a for-loop to print them:\n")
for i in 0..<array.count{
    print(array[i])
}
