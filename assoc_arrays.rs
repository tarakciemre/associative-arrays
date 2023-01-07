fn main() {
    use std::collections::HashMap;

    // Initialization (Hashmap sensitive to types)
    let mut translation = HashMap::new();

    translation.insert("hello", "merhaba");
    translation.insert("goodbye", "hoscakal");
    
    // Get the value for a given key
    println!("The value of key 'hello': {}", translation["hello"]);
    
    // Add a new element
    translation.insert("one", "bir");
    println!("The value of key 'one' after its insertion: {}", translation["one"]);
    
    // Remove an element
    translation.remove("one");
    println!("\n-The map after 'one' is deleted:");
    for (key, value) in &translation {
        println!("{key}: {value}");
    }
    
    // Modify the value of an existing element
    translation.insert("hello", "selam");
    println!("\n-The map after 'hello' is 'selam':");
    for (key, value) in &translation {
        println!("{key}: {value}");
    }
    
    // Search for the existence of a key
    println!("\nThe map contains the key 'hello': {}", translation.contains_key("hello"));
    
    // Search for the existence of a value
    let valueExists = translation.values().any(|&val| *val == *"selam");
    println!("\nThe map contains the value 'selam': {}", valueExists);
    
    // Loop through HashMap
    println!("\nPrinting the map using iteration:");
    for (key, value) in &translation {
        foo(key, value);
    }

} 

// Foo function to print the values
fn foo(a: &&str, b: &&str) {
    println!("{}: {}", a, b);
}
