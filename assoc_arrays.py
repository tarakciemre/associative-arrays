# Initialize
translation = {"hello":"merhaba","goodbye":"hoscakal"}
print("\nThe dictionary after initialization: ")
print(translation)

# Get the value given for a given key
print("\nGetting the value of 'hello': " + translation["hello"])

# Add a new element
translation["one"] = 1
print("\nThe dictionary after 'one' is added: ")
print(translation)

# Remove an element
del(translation["one"])
print("\nThe dictionary after 'one' is deleted: ")
print(translation)

# Modify the value of an existing element
translation["hello"] = "selam"
print("\nThe dictionary after value of 'hello' is changed to 'selam': ")
print(translation)

# Search for the existence of a key
key_hello_exists = "hello" in translation
print("\nThe key 'hello' exists: " + str(key_hello_exists))

# Search for the existence of a value
value_selam_exists = "selam" in translation.values()
print("\nThe value 'selam' exists: " + str(value_selam_exists))

# Loop through an associative array
print("\nPrinting by iterating through the dictionary: ")
def foo(a, b):
	print(str(a) + ": " + str(b))

for key in translation:
	foo(key, translation[key])

