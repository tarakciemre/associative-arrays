<?php
    // Initialize
    $translation = array("hello"=>"merhaba",     "goodbye"=>"hoscakal");
    print("-Array after initialization: \n");
    print_r($translation);
    
    // Get the value for a given key
    print("-The value of key 'hello': ".$translation["hello"]);
    
    // Add a new element
    $translation["one"] = 1;
    print("\n-Array after 'one' is added:\n");
    print_r($translation);
    
    // Remove an element
    unset($translation["one"]);
    print("-Array after deletion of 'one':\n");
    print_r($translation);
    
    // Modify the value of an existing element
    $translation["hello"] = "selam";
    print("-Array after 'hello' => 'selam' instead of 'hello':\n");
    print_r($translation);
    
    // Search for the existence of a key
    print("\n-For the below, blank if false, 1 if true\n");
    print("The key 'hello' exists: ".array_key_exists("hello", $translation));
    
    // Search for the existence of a value
    print("\nThe value 'selam' exists: ".in_array("selam", $translation));
    
    // Loop through the array
    print("\n\n-The array printed by iteration:\n");
    foreach($translation as $key => $value) {
        foo($key, $value);
    }
    
    function foo($a, $b) {
        print("\n".$a.": ".$b);
    }
    
?>
