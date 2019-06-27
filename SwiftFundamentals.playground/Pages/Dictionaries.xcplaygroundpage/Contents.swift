

import Foundation

//Sample of different dictionary declarations. Here, it holds peoples and their weight in kilos
var dictionary = ["John":89, "Robert":78, "Anna":56, "Martha":52, "Benjamin":81]
var fullFormDictionary: Dictionary<String, Int> = ["John":89, "Robert":78, "Anna":56, "Martha":52, "Benjamin":81]
var fullFormEmptyDictionary = Dictionary<String, Int>()
var emptyDictionary = [String: Int]()

//To retrieve the dictionary size, use count() method:
print("Getting the number of elements in the dictionary:", dictionary.count)

//To retrieve a value of some key:
print("Retrieving a value of a key (returns an Optional):", dictionary["John"])

//Printing the unwrapped value of a key:
if let johnWeight = dictionary["John"] {
    print("Retrieving a value of a key, now unwrapping the Optional value:", johnWeight)
}

print("Retrieving a value from a non-existing key returns nil:", dictionary["NonExistingKey"])

//Adding elements to a dictionary:
dictionary["Charles"] = 68
print("Number of elements after a new element is added:", dictionary.count)

if let charlesWeight = dictionary["Charles"] {
    print("Retrieving the newly added element, Charles weight:", charlesWeight)
}

//You can also add new elements using the updateValue() method which updates the value stored in the dictionary
//for the given key, or adds a new key-value pair if the key does not exist
dictionary.updateValue(69, forKey: "Joseph")

print("Number of elements after another element is added:", dictionary.count)

//Now using updateValue() method to actually update an existing key:
dictionary.updateValue(86, forKey: "John")

if let johnNewAge = dictionary["John"] {
    print("John's new weight after updating his weight:", johnNewAge)
}

//Removing an element
dictionary.removeValue(forKey: "Charles")

print("Number of elements after an element is removed:", dictionary.count)

//Iterate over the dictionary with a for-loop:
print("Printing dictionaries with a for-loop:")
for (name, weight) in dictionary {
    print("Name: \(name), Weight: \(weight)")
}
