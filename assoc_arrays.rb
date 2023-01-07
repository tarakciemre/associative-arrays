# Initialize
translate = {'hello' => 'merhaba', 'goodbye' => 'hoscakal'}
puts "The hash after initialization:"
puts translate

# Get the value for a given key
puts "The value for key 'hello':"
puts translate['hello']

# Add a new element
translate['one'] = 1
puts "The hash after 'one' is added:\n"
puts translate

# Remove an element
translate.delete('one')
puts "The hash after 'one' is deleted:"
puts translate

# Modify the value of an existing element
translate['hello'] = 'selam'
puts "The hash 'hello' is changed to 'selam':"
puts translate

# Search for the existence of a key
puts "\nThe key 'hello' exists:"
puts translate.key?("hello")

# Search for the existence of a value
 puts "The value 'selam' exists:"
 puts translate.value?("selam")

# Loop through hash
def foo(k, v)
    puts k + ": " + v + "\n"
end
puts "\n-The hash printed by iteration:\n"
translate.each do |key, array| 
    foo(key, translate[key])
end

