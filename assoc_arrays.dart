void main() { 
  // Initialization
  var translation = {
    'hello': 'merhaba',
    'goodbye': 'hoscakal'
  };
  
  // Get the value for a given key
  print("\nValue of key 'goodbye':");
  print(translation['goodbye']);
  
  // Add a new element
  translation['one'] = 'bir';
  print("\nThe hash after 'one' added:");
  print(translation);
  
  // Remove an element
  translation.remove('one');
  print("\nThe hash after 'one' removed:");
  print(translation);
  
  // Modify the value of an existing element
  translation['hello'] = 'selam';
  print("\nThe hash after value of 'hello' changed to 'selam':");
  print(translation);
  
  // Search for the existence of a key
  print("\nThe hash contains key 'hello':");
  print(translation.containsKey('hello'));
  print("\nThe hash contains key 'one':");
  print(translation.containsKey('one'));
  
  // Search for the existence of a value
  print("\nThe hash contains value 'selam':");
  print(translation.containsValue('selam'));
  
  print("\nThe hash contains value 'hayir':");
  print(translation.containsValue('hayir'));
  
  // Iterate through the associative array,
  // applying the function foo
  print("\nThe hash printed using iteration:");
  translation.forEach((k,v) => foo(k, v));
}

void foo(var a, var b)
{
  print(a + ": " + b);
}
