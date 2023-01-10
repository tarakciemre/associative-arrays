- Author: Emre Tarakcı
- Date: 19.11.2022
# Programming Languages Examination: Associative Arrays
## Introduction
An associative array is an abstract data type that can keep key-value pairs. The keys must be unique and they are mapped to a single value. However, there may be multiple values that are mapped to different keys. Associative arrays are useful in the cases mapping certain inputs to their correlated outputs, such as a situation where a person's phone number must be mapped to the id of the person.
In different languages, associative arrays are implemented in different ways. For example in Dart, an associative array is called a Map, also known as hash. In Javascript, regular objects already have key value pairs and objects can be used as associative arrays, but a dedicated Map type also exists in which key values can be any data type.
In this report, the implementations of associative arrays in the languages Dart, Javascript, Lua, PHP, Python, Ruby and Rust will be analyzed by giving examples from code samples.
## Dart
### Initialization
In Dart language, an associative array is known as a map or a hash. It is initialized using curly brackets and denoting the key-value pairs using ':' between them:
```
// Initialization
var translation = {
'hello': 'merhaba',
'goodbye': 'hoscakal'
};
```
### Getting the value for a given key
In Dart, in order to get the value of a given key, the name of the map, followed by the key in square brackets is used. Doing this returns the value for the input key:
```
// Get the value for a given key
print("\nValue of key 'goodbye':");
print(translation['goodbye']);
```
**The output:**
```
Value of key 'goodbye':
hoscakal
```
### Adding a new element
In Dart, in order to add a new element to a map, assignment operator is used. The key for which a value is to be inserted should be given in square brackets to the right of the name of the map with the value in the right hand side:
```
// Add a new element
translation['one'] = 'bir';
print("\nThe hash after 'one' added:");
print(translation);
```
**The output:**
```
The hash after 'one' added:
{hello: merhaba, goodbye: hoscakal, one: bir}
```
### Removing an element
To remove an element in Dart, the function 'remove' is applied on the map with the key to be removed as the parameter:
```
// Remove an element
translation.remove('one');
print("\nThe hash after 'one' removed:");
print(translation);
```
**The output**:
```
The hash after 'one' removed:
{hello: merhaba, goodbye: hoscakal}
```

### Modifying the value of an existing element
To modify the value of an existing value in Dart, the assignment operator is used just as it is used in adding a new element, but the key value is a key that already exists in the map:
```
// Modify the value of an existing element
translation['hello'] = 'selam';
print("\nThe hash after value of 'hello' changed to 'selam':");
print(translation);
```
**The output:**
```
The hash after value of 'hello' changed to 'selam':
{hello: selam, goodbye: hoscakal}
```
### Searching for the existence of a key
To search for the existence of a key, the function 'containsKey' is used on the map with the key to be searched as the parameter. This function returns the result as boolean. This is a very intuitive way to search for the existence of a key:
```
// Search for the existence of a key
print("\nThe hash contains key 'hello':");
print(translation.containsKey('hello'));
```
**The output:**
```
The hash contains key 'hello':
true
```
### Searching for the existence of a value
In Dart, to search the existence of a value, the function 'containsValue' is used. This function works in the same way as the 'containsKey' function:
```
// Search for the existence of a value
print("\nThe hash contains value 'selam':");
print(translation.containsValue('selam'));
```
**The output:**
```
The hash contains value 'selam':
true
```
### Printing by iteration
To iterate through a map in Dart, the function 'forEach' is used. This is an iterator function, in which an arrow function can be used to use the key and value pairs as input for a function. This is similar to Javascript. For the arrow function, parameters for key and value (k and v in this case) are put in parantheses and using an arrow function, they are used as parameters for the foo function. 
```
// Iterate through the associative array,
// applying the function foo
print("\nThe hash printed using iteration:");
translation.forEach((k,v) => foo(k, v));
```
To define a function, return type followed by function name and the parameters is written. The statements of the function are then written in curly brackets. The functions can be called by the function name followed by parantheses, in which the call parameters are given.
```
void foo(var a, var b)
{
  print(a + ": " + b);
}
```
**The output:**
```
The hash printed using iteration:
hello: selam
goodbye: hoscakal
```

## Javascript
### Initialization
In Javascript, a map is initialized using the 'Map' keyword. Map is also an object in Javascript, but it allows the use of any type as the key value, in comparison to regular objects. It is initialized in square brackets, in which the tuples of the map are given in square brackets with comma in between:
```
// Initialize
var translation = new Map([
  ['hello', 'merhaba'],
  ['goodbye', 'hoscakal']
]);
console.log("The map after initialization:");
printTranslation();
```
**The output:**
```
The map after initialization:
hello: merhaba
goodbye: hoscakal
```
### Getting the value for a given key
In Javascript, to get the value for a given key, 'get()' method is used on the map. As input, the key to retreive must be given:
```
// Get the value for a given key
console.log("The value of the key 'hello': " + translation.get('hello'));
```
**The output:**
```
The value of the key 'hello': merhaba
```
### Adding a new element
In Javascript, 'set()' method is used to add a new element. The key and value pair is given as an input to the function.
```
// Add a new element
translation.set('one', 'bir');
console.log("The map after 'one' is added:");
printTranslation();
```
**The output:**
```
The map after 'one' is added:
hello: merhaba
goodbye: hoscakal
one: bir
```
### Removing an element
In Javascript, to remove an element, 'delete()' function with the key to remove as the parameter is used: 
```
// Remove an element
translation.delete('one');
console.log("The map after 'one' is deleted:");
printTranslation();
```
**The output:**
```
The map after 'one' is deleted:
hello: merhaba
goodbye: hoscakal
```
### Modifying the value of an existing element
To modify the value of an existing element, again the 'set()' method is used. The difference of this usage from adding a new element is that, a key that already exists in the map is given as a parameter in this case.
```
// Modify the value of an existing element
translation.set('hello', 'selam');
console.log("The map after 'hello' is changed to 'selam':");
printTranslation();
```
**The output:**
```
The map after 'hello' is changed to 'selam':
hello: selam
goodbye: hoscakal
```
### Searching for the existence of a key
To search the existence of a key, the function 'has()' is used with the key as the input. It returns a boolean. This is a very intuitive usage for searching the key.
```
// Search for the existence of a key
console.log("The map includes key 'hello': " + translation.has('hello'));
```
**The output:**
```
The map includes key 'hello': true
```
### Searching for the existence of a value
To search the existence of a value, the values in the map are put in another variable. The 'values()' function creates an iterable from the values in the map. Then, using the 'includes()' method, the value to be searched is used as a parameter:
```
// Search for the existence of a value
const values = [...translation.values()];
const includes = values.includes('selam');
console.log("The map includes value 'selam': " + includes);
```
**The output:**
```
The map includes value 'selam': true
```
### Printing by iteration
To iterate through a map, the function 'forEach()' is used. This usage is identical to the usage in Dart with arrow function.
```
// Loop through the array
function printTranslation() {
  translation.forEach((value, key) => foo(value, key));
}
```
To define a function, the keyword 'function' followed by the function name and the parameters in parantheses is used. The statements of the function are then given in curly brackets:
```
// foo function to print the parameters to the console
function foo(value, key) {
  console.log(value + ": " + key)
}
```
**The output:**
```
hello: merhaba
goodbye: hoscakal
```
## Lua
### Initialization
In Lua, associative arrays are called tables.  Tables are implemented using objects. Creation of a table is done by using the assignment operator with curly braces in the right hand side.
```
-- Initialization
translation = {}
translation['hello'] = 'merhaba'
translation['goodbye'] = 'hoscakal'

print("\nThe values in the table after initialization:")
printTranslation()
```
**The output:**
```
The values in the table after initialization:
hello: merhaba
goodbye: hoscakal
```
### Getting the value for a given key
To get the value for a key, the key in square brackets after the name of table is used:
```
-- Get the value for a given key
print("\nThe value for the key 'hello': " .. translation['hello'])
```
**The output:**
```
The value for the key 'hello': merhaba
```
### Adding a new element
To add a new element in Lua, assignment operator is used using the key in square brackets after the table in the left hand side. The value is put in the right hand side.
```
-- Add a new element
translation['one'] = 1
print("\nThe value for the key 'one': " .. translation['one'])
```
**The output:**
```
The value for the key 'one': 1
```
### Removing an element
To remove an element in Lua, the value corresponding to the key is assigned "nil" value.
```
-- Remove an element
translation['one'] = nil
print("\nThe values in the table after 'one' is removed:")
printTranslation()
```
**The output:**
```
The values in the table after 'one' is removed:
hello: merhaba
goodbye: hoscakal
```
### Modifying the value of an existing element
Modifying the value of a key is done by the assignment statement identical to adding a new element, but instead of a new key, an already existing key is used:
```
-- modify the value of an existing element
translation['hello'] = 'selam'
print("\nthe values in the table after 'hello' is changed to 'selam':")
printtranslation()
```
**The output:**
```
The values in the table after 'hello' is changed to 'selam':
hello: selam
goodbye: hoscakal
```
### Searching for the existence of a key
To search the existence of a key, it is possible to check if the corresponding value of the key is equal to "nil". If the value is equal to nil, this means that the key does not exist in the dictionary
```
-- search for the existence of a key
keyhelloexists = translation['hello'] ~= nil
print("\nkey hello exists: " .. tostring(keyhelloexists))
```
**The output:**
```
Key hello exists: true
```
### Searching for the existence of a value
To search the existence of a value, there is no native function in Lua. So in order for that, the table is iterated using a for loop, in which the pairs() function assigns each value in the table to the 'key' and 'value' parameters denoted in the for loop. Then, each value is compared to the searched value, that outputs the existence of the value in a variable called valueExists:
```
-- Search for the existence of a value
valueToSearch = 'selam'
valueExists = false
for key, value in pairs(translation) do
    if value == 'selam' then
        valueExists = true
        break
    end
end
print("\nThe value 'selam' exists: " .. tostring(valueExists))
```
**The output:**
```
The value 'selam' exists: true
```
### Printing by iteration
To print the values in the table, a foo function is defined. The function is defined using the 'function' keyword, followed by the name of the function and the parameers in parantheses. After that, an indented list of statements for the function come. The end of the function is determined with the 'end'.
```
-- Loop through the array and apply foo function
function foo(key, value)
    print(key .. ": " .. value)
end
```
To iterate through the values of the table, a for loop is used. The usage here is identical to the search for existence above, but instead of checking the values of the keys, the key and value parameters are passed to the foo() function.
```
function printTranslation()
    for key, value in pairs(translation) do
        foo(key, value)
    end
end
```
**The output:**
```
The values in the table after initialization:
hello: merhaba
goodbye: hoscakal
```
## PHP
### Initialization
In PHP, associative arrays can be implemented using arrays since arrays use key-value pairs. To initialize an associative array, we have the variable name in the left hand side starting with $ sign, and an assignment statement with the function array() in the right hand side. The parameters for the array are the initialization values of the array.
```
// Initialize
$translation = array("hello"=>"merhaba", "goodbye"=>"hoscakal");
print("-Array after initialization: \n");
print_r($translation);
```

**The output:**
```
-Array after initialization: 
Array
(
    [hello] => merhaba
    [goodbye] => hoscakal
)
```
### Getting the value for a given key
In PHP, getting the value of a key can be done using square brackets with the key in it. This returns the value. 
```
// Get the value for a given key
print("-The value of key 'hello': ".$translation["hello"]);
```
**The output:**
```
-The value of key 'hello': merhaba
```
### Adding a new element
To add a new element, an assignment statement is used, in which the array variable is followed by square brackets with the new key to be added in it in the left hand side. In the right hand side, the value for the new key is given:
```
// Add a new element
$translation["one"] = 1;
print("\n-Array after 'one' is added:\n");
print_r($translation);
```
**The output:**
```
-Array after 'one' is added:
Array
(
    [hello] => merhaba
    [goodbye] => hoscakal
    [one] => 1
)
```
### Removing an element
To remove an element, the function unset() is used. The table with the key in it is passed as a parameter:
```
// Remove an element
unset($translation["one"]);
print("-Array after deletion of 'one':\n");
print_r($translation);
```
**The output:**
```
-Array after deletion of 'one':
Array
(
    [hello] => merhaba
    [goodbye] => hoscakal
)
```
### Modifying the value of an existing element
To modify the value of an existing element is identical to adding a new element syntactically. Instead of a new key, a previously existing key is used as a key in this case:
```
// Modify the value of an existing element
$translation["hello"] = "selam";
print("-Array after 'hello' => 'selam' instead of 'hello':\n");
print_r($translation);
```
**The output:**
```
-Array after 'hello' => 'selam' instead of 'hello':
Array
(
    [hello] => selam
    [goodbye] => hoscakal
)
```
### Searching for the existence of a key
To search the existence of a key, the function array_key_exists() is used. The first parameter of this function is the key to search, and the second parameter is the array. This function outputs 1 if the key exists, and outputs nothing if it does not exist.
```
// Search for the existence of a key
print("\n-For the below, blank if false, 1 if true\n");
print("The key 'hello' exists: ".array_key_exists("hello", $translation));
```
**The output:**
```
-For the below, blank if false, 1 if true
The key 'hello' exists: 1
```
### Searching for the existence of a value
To search the existence of a value, the function in_array() is used. The first parameters is the value to search, and the second parameter is the array to search in:
```
// Search for the existence of a value
print("\nThe value 'selam' exists: ".in_array("selam", $translation));
```
**The output:**
```
The value 'selam' exists: 1
```
### Printing by iteration
To loop through the array,  foreach() function is used. When "$translation as $key => $value" is passed into foeach, the key and the value are put into the $key and $value parameters for each key in the array. Inside the iteration, the key and value parameters are passed to the foo function for printing. 
```
// Loop through the array
print("\n\n-The array printed by iteration:\n");
foreach($translation as $key => $value) {
	foo($key, $value);
}
```
Functions are defined using the keyword 'function' followed by the name of the function and parameters in parantheses. There is no type requirements for the variables.
```
function foo($a, $b) {
	print("\n".$a.": ".$b);
}
```
**The output:**
```
-The array printed by iteration:

hello: selam
goodbye: hoscakal
```
## Python
### Initialization
In Python, dictionaries are used as associative arrays. They can be initialized using an assignment statement with the variable name in the left hand side, and curly braces in the left hand side. The curly braces may include initialization key-value pairs:
```
# Initialize
translation = {"hello":"merhaba","goodbye":"hoscakal"}
print("\nThe dictionary after initialization: ")
print(translation)
```
**The output:**
```
The dictionary after initialization: 
{'hello': 'merhaba', 'goodbye': 'hoscakal'}
```
### Getting the value for a given key
To get the value for a given key in a python dictionary, square brackets with key inside it is used after the dictionary parameter:
```
# Get the value given for a given key
print("\nGetting the value of 'hello': " + translation["hello"])
```
**The output:**
```
Getting the value of 'hello': merhaba
```
### Adding a new element
To add a new element to a dictionary, an assignment statement with a non-existing key is used. The right hand side contains the value of the created element:
```
# Add a new element
translation["one"] = 1
print("\nThe dictionary after 'one' is added: ")
print(translation)
```
**The output:**
```
The dictionary after 'one' is added: 
{'hello': 'merhaba', 'goodbye': 'hoscakal', 'one': 1}
```
### Removing an element
To remove an element, the function del() is used. The function takes the dictionary variable with the key value for the deletion:
```
# Remove an element
del(translation["one"])
print("\nThe dictionary after 'one' is deleted: ")
print(translation)
```
**The output:**
```
The dictionary after 'one' is deleted: 
{'hello': 'merhaba', 'goodbye': 'hoscakal'}
```
### Modifying the value of an existing element
Modifying a value of existing element is identical to creating a new element, but with a key that already exists in the dictionary:
```
# Modify the value of an existing element
translation["hello"] = "selam"
print("\nThe dictionary after value of 'hello' is changed to 'selam': ")
print(translation)
```
**The output:**
```
The dictionary after value of 'hello' is changed to 'selam': 
{'hello': 'selam', 'goodbye': 'hoscakal'}
```
### Searching for the existence of a key
Searching for a key is done by the keyword "in". The use of this function is intuitive and simple to use.
```
# Search for the existence of a key
key_hello_exists = "hello" in translation
print("\nThe key 'hello' exists: " + str(key_hello_exists))
```
**The output:**
```
The key 'hello' exists: True
```
### Searching for the existence of a value
To search the existence of a value, values() function is used. When the function is used on a dictionary, it returns an iterable of all values in the dictionary.
```
# Search for the existence of a value
value_selam_exists = "selam" in translation.values()
print("\nThe value 'selam' exists: " + str(value_selam_exists))
```
**The output:**
```
The value 'selam' exists: True
```
### Printing by iteration
To define a function in Python, the keyword "def" is used, followed by the name of the function and the parameters in parantheses. After that, there is ":" and the statements of the function are indented. Python uses indentation instead of the curly braces to determine the boundaries of the function. 
```
def foo(a, b):
	print(str(a) + ": " + str(b))
```
To iterate through a dictionary, a for loop is used with in keyword. This way, the statements in the loop are executed with each key in dictionary assigned to the 'key' variable one by one.
```
for key in translation:
	foo(key, translation[key])
```
**The output:**
```
Printing by iterating through the dictionary: 
hello: selam
goodbye: hoscakal
```
## Ruby
### Initialization
In Ruby, associative arrays can be implemented using hashes. To create a new hash, an assignment statement is used with the variable name in left hand side and curly braces in the right hand side. The curly braces may include initialization values, with keys followed by => followed by values, and each tuple is seperated with a comma.
```
# Initialize
translate = {'hello' => 'merhaba', 'goodbye' => 'hoscakal'}
puts "The hash after initialization:"
puts translate
```
**The output:**
```
The value for key 'hello':
merhaba
```
### Getting the value for a given key
To get the value for a given key, the hash variable followed by the key in square brackets is used:
```
# Get the value for a given key
puts "The value for key 'hello':"
puts translate['hello']
```
**The output:**
```
The hash after 'one' is added:
{"hello"=>"merhaba", "goodbye"=>"hoscakal", "one"=>1}
```
### Adding a new element
To add a new element to a hash, an assignment statement with hash variable with key in the left hand side and the value in the right hand side is used:
```
# Add a new element
translate['one'] = 1
puts "The hash after 'one' is added:\n"
puts translate
```
**The output:**
```
The hash after 'one' is added:
{"hello"=>"merhaba", "goodbye"=>"hoscakal", "one"=>1}
```
### Removing an element
To remove an element, the function delete() is used with the key as the parameter:
```
# Remove an element
translate.delete('one')
puts "The hash after 'one' is deleted:"
puts translate
```
**The output:**
```
The hash after 'one' is deleted:
{"hello"=>"merhaba", "goodbye"=>"hoscakal"}
```
### Modifying the value of an existing element
To modify the value of an existing element, an assignment statement identical to adding a new element is used with an existsing key:
```
# Modify the value of an existing element
translate['hello'] = 'selam'
puts "The hash 'hello' is changed to 'selam':"
puts translate
```
**The output:**
```
The hash 'hello' is changed to 'selam':
{"hello"=>"selam", "goodbye"=>"hoscakal"}
```
### Searching for the existence of a key
To search for the existence of a key, the function key?() is used. This function is called on the hash variable, and takes as an input the key to search.
```
# Search for the existence of a key
puts "\nThe key 'hello' exists:"
puts translate.key?("hello")
```
**The output:**
```
The key 'hello' exists:
true
```
### Searching for the existence of a value
To search for the existence of a value, the function value?() is used. The value is passed as a parameter to the function:
```
# Search for the existence of a value
puts "The value 'selam' exists:"
puts translate.value?("selam")
```
**The output:**
```
The value 'selam' exists:
true
```
### Printing by iteration
To define a function, the keyword 'def' is used.  This is similar to Lua in the syntax since end is used to denote the end of the function boundary. The variables are in parantheses after the name of the function:
```
def foo(k, v)
    puts k + ": " + v + "\n"
end
```
To iterate through a map, do keyword and each parameter of the translate object is used. After that, the key and array variables are used as the parameters on which the loop will assign the keys to:
```
puts "\n-The hash printed by iteration:\n"
translate.each do |key, array| 
    foo(key, translate[key])
end
```
**The output:**
```
-The hash printed by iteration:
hello: selam
goodbye: hoscakal
```

## Rust
### Initialization
In Rust, associative arrays can be initialized using the let mut and variable name in the left hand side, and HashMap::new() in the right hand side. This denotion is hard to get used to as a programmer and does not look simple. Not very readable and writable.
```
// Initialization (Hashmap sensitive to types)
let mut translation = HashMap::new();
```
### Getting the value for a given key
To get the value for a given key, square brackets with the key inside is used after the variable name:
```
// Get the value for a given key
println!("The value of key 'hello': {}", translation["hello"]);
```
**The output:**
```
The value of key 'hello': merhaba
```
### Adding a new element
To add a new element, the function insert() is used on the hashmap with first parameter as key and second parameter as the value.
```
// Add a new element
translation.insert("one", "bir");
println!("The value of key 'one' after its insertion: {}", translation["one"]);
```
**The output:**
```
The value of key 'one' after its insertion: bir
```
### Removing an element
To remove an element, the function remove() is used on the hashmap with the key to remove as the input parameter:
```
// Remove an element
translation.remove("one");
println!("\n-The map after 'one' is deleted:");
for (key, value) in &translation {
	println!("{key}: {value}");
}
```
**The output:**
```
-The map after 'one' is deleted:
hello: merhaba
goodbye: hoscakal
```
### Modifying the value of an existing element
To modify the value of an existing element in Rust, insert function is used in identical manner to adding new element, but with an existing key value.
```
// Modify the value of an existing element
translation.insert("hello", "selam");
println!("\n-The map after 'hello' is 'selam':");
for (key, value) in &translation {
	println!("{key}: {value}");
}
```
**The output:**
```
-The map after 'hello' is 'selam':
hello: selam
goodbye: hoscakal
```
### Searching for the existence of a key
To search the existence of a key, the function contains_key() is used on the hashmap with the key as the input:
```
// Search for the existence of a key
println!("\nThe map contains the key 'hello': {}", translation.contains_key("hello"));
```
**The output:**
```
The map contains the key 'hello': true
```
### Searching for the existence of a value
To search for the existence of a value, the functions .value(), any() are used. In this function, a comparison is done using pointers, and this was hard to understand and unneccessarily complex in my opinion. This could have been implied in a much more readable and writable way.
```
// Search for the existence of a value
let valueExists = translation.values().any(|&val| *val == *"selam");
println!("\nThe map contains the value 'selam': {}", valueExists);
```
**The output:**
```
The map contains the value 'selam': true
```
### Printing by iteration
To loop through the hashmap, for loop is used with key and value parameters given in parantheses for the function to assign the tuples to, and the address of the hashmap after the in keyword.
```
// Loop through HashMap
println!("\nPrinting the map using iteration:");
for (key, value) in &translation {
	foo(key, value);
}
```
To define a function in Rust, the keyword 'fn' is used, followed by the name of the function to define. In parantheses, the parameters and their types are identified:
```
// Foo function to print the values
fn foo(a: &&str, b: &&str) {
    println!("{}: {}", a, b);
}
```
**The output:**
```
Printing the map using iteration:
hello: selam
goodbye: hoscakal
```

### Conclusion
In this report, the implementations of associative arrays were tested in the languages Dart, Javascript, Lua, PHP, Python, Ruby and Rust. It was interesting to see that each of these languages differed significantly in their implementation of a data structure that behaves similarly. Furthermore, each language has their own syntactic rules that were identical in some of them, and greatly differed in others. It is possible to see that some of these languages might be more efficient in their implementation, and others might sacrifice readability and writability for being more precise, allowing the programmer more control or other reasons. There may even be multiple implementations of associative arrays in one language. For example, in Javascript, an object may also be used as an associative array since it has key-value pairs. Some of these languages allow different value types in the associative arrays, but Rust gives an error when an integer value is to be inserted to a hashmap that has string values in it.
Overall, the language that was my favourite for its implementation of associative arrays was Dart. It has functions containsKey and containsValue which makes it very easy to check the existence of keys and values. Its syntax is very simple and it is easily readable and writable. The use of arrow functions may be unintuitive for some programmers, however since I am used to them, it was no problem for me. Overall, it was a good experience to create associative arrays in Dart.
The language that I had the most difficulty with was Rust. To create a new hashmap using `let mut translation = HashMap::new();` was unintuitive to me as a programmer who is not experienced in Dart. To check if a value exists in Rust using  `any(|&val| *val == *"selam");` was also very unintuitive. It is hard to read, hard to write, and certainly hard to get into as a new Rust programmer. On the contrary, I know that Rust is a very efficient programming language and it has important applications, and the fact that it has the hard syntax is because it most likely gives more control to the programmer in terms of memory management as it uses pointers. That is why I can understand why Rust is a widely used programming language in specific uses.
### Learning Strategy
To learn about the use of associative arrays in the given languages, I started in each one by finding out what corresponds to an associative array in that language. For example, in Javascript, I could use maps or objects as associative arrays, and in Rust, it was hashmaps. After that, I learned how to initialize an associative array in that language. To do these, I have used documentations and tutorial websites such as *w3schools* and *tutorialspoint*. While learning about them, I was simultaneously trying them out in the online IDE's that I have found online. The list of these IDE's is as follows:
- Rust : https://www.onlinegdb.com/online_rust_compiler
- Python:  https://www.w3schools.com/python/trypython.asp?filename=demo_compiler
- Ruby:  https://www.tutorialspoint.com/execute_ruby_online.php
- Dart:  https://dartpad.dev/?
- Lua:  https://www.mycompiler.io/new/lua
- PHP:  https://www.tutorialspoint.com/execute_php_online.php
- Javascript:  https://playcode.io/javascript

After each step, such as removing an element from the associative array, I have printed the array to see if the changes were applied. When something was wrong, I searched for the problem in Google, and found the solutions in websites such as *stackoverflow*. Simultaneously, in order to create the report, I was taking note of the online sources I have used. To get to know the behaviour of the language better, I have tried to give different types of values to keys such as string and integer. In Rust, for example, the hashmaps allowed only one type of value, while in the others multiple value types were allowed. To write the report, I have copied sample code segments and I have given details about their execution and their syntax. I also made comments on the way their syntax differed from other languages and nuances in them.
### Resources
- “Check If a Value Exists in a Map Using JavaScript.” _Bobbyhadz_, https://bobbyhadz.com/blog/javascript-check-if-value-exists-in-map#:~:text=To%20check%20if%20a%20value%20exists%20in%20a%20map%3A&text=Convert%20the%20iterator%20to%20an,the%20array%20and%20false%20otherwise.
- “Dart 1 for Everyone.” _O'Reilly Online Learning_, Pragmatic Bookshelf, https://www.oreilly.com/library/view/dart-1-for/9781680500479/f_0023.html.
- “Dart Programming - Map.foreach() Function.” _Tutorials Point_, https://www.tutorialspoint.com/dart_programming/dart_programming_map_function_foreach.htm.
- Greg HewgillGreg Hewgill 917k178178 gold badges11341134 silver badges12671267 bronze badges, et al. “Delete an Element from a Dictionary.” _Stack Overflow_, 1 July 1958, https://stackoverflow.com/questions/5844672/delete-an-element-from-a-dictionary.
- “Hash.” _Class: Hash (Ruby 3.1.2)_, https://ruby-doc.org/core-3.1.2/Hash.html.
- hrsma2ihrsma2i 3, et al. “How to Add a New Pair to Map in Dart?” _Stack Overflow_, 1 Feb. 1966, https://stackoverflow.com/questions/53908405/how-to-add-a-new-pair-to-map-in-dart.
- “Lua - Tables.” _Tutorials Point_, https://www.tutorialspoint.com/lua/lua_tables.htm.
- “Map and Set.” _The Modern JavaScript Tutorial_, 14 Nov. 2022, https://javascript.info/map-set.
- _Programming in Lua : 2.5_, https://www.lua.org/pil/2.5.html.
- _Programming in Lua : 3.4_, https://www.lua.org/pil/3.4.html.
- “Programming-Idioms.” _Initialize a New Map (Associative Array), in Dart_, https://programming-idioms.org/idiom/8/initialize-a-new-map-associative-array/202/dart.
- Real Python. “How to Iterate through a Dictionary in Python.” _Real Python_, Real Python, 13 Aug. 2022, https://realpython.com/iterate-through-dictionary-python/.
- Sushanth CSSushanth CS 2, et al. “Associative Arrays in Ruby.” _Stack Overflow_, 1 Jan. 1958, https://stackoverflow.com/questions/4266695/associative-arrays-in-ruby.
- “Table.find Lua with Code Examples.” _Programming and Tools Blog -_, 23 Sept. 2022, https://www.folkstalk.com/2022/09/table-find-lua-with-code-examples.html.
- Varun. “Thispointer.” _ThisPointer_, https://thispointer.com/python-check-if-a-value-exists-in-the-dictionary-3-ways/.
- “Array_key_exists.” _Php_, https://www.php.net/manual/en/function.array-key-exists.php.
- BenBen 65.1k3737 gold badges8484 silver badges108108 bronze badges, et al. “Deleting an Element from an Array in PHP.” _Stack Overflow_, 1 Feb. 1956, https://stackoverflow.com/questions/369602/deleting-an-element-from-an-array-in-php.
- “Crate Assoc[−][Src].” _Assoc - Rust_, https://docs.rs/assoc/latest/assoc/.
- Misha MoroshkoMisha Moroshko 161k221221 gold badges494494 silver badges729729 bronze badges, et al. “How to Remove a Key from Hash and Get the Remaining Hash in Ruby/Rails?” _Stack Overflow_, 1 Aug. 1958, https://stackoverflow.com/questions/6227600/how-to-remove-a-key-from-hash-and-get-the-remaining-hash-in-ruby-rails.
- Mohit JainMohit Jain 42.5k5656 gold badges165165 silver badges273273 bronze badges, et al. “How to Check If a Specific Key Is Present in a Hash or Not?” _Stack Overflow_, 1 Feb. 1958, https://stackoverflow.com/questions/4528506/how-to-check-if-a-specific-key-is-present-in-a-hash-or-not.
- Person. “Printing Hashmaps.” _The Rust Programming Language Forum_, 17 July 2019, https://users.rust-lang.org/t/printing-hashmaps/30384.
- _PHP Associative Arrays_, https://www.w3schools.com/php/php_arrays_associative.asp.
- “PHP Foreach Loop.” _PHP for Loops_, https://www.w3schools.com/php/php_looping_foreach.asp.
- _PHP Functions_, https://www.w3schools.com/php/php_functions.asp.
- “Programming-Idioms.” _Check If Map Contains Value, in Rust_, https://programming-idioms.org/idiom/52/check-if-map-contains-value/455/rust.
- “Ruby - Methods.” _Tutorials Point_, https://www.tutorialspoint.com/ruby/ruby_methods.htm.
- “The Rust Programming Language.” _Functions - The Rust Programming Language_, https://doc.rust-lang.org/book/ch03-03-how-functions-work.html.
- “The Rust Programming Language.” _Storing Keys with Associated Values in Hash Maps - The Rust Programming Language_, https://doc.rust-lang.org/beta/book/ch08-03-hash-maps.html.
- “String Operators - Manual.” _Php_, https://www.php.net/manual/en/language.operators.string.php.
- stssts 2, et al. “How to Get a Specific Output Iterating a Hash in Ruby?” _Stack Overflow_, 1 Oct. 1956, https://stackoverflow.com/questions/1227571/how-to-get-a-specific-output-iterating-a-hash-in-ruby.
