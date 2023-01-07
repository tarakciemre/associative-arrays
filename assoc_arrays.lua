-- Loop through the array and apply foo function
function foo(key, value)
    print(key .. ": " .. value)
end

function printTranslation()
    for key, value in pairs(translation) do
        foo(key, value)
    end
end

-- Initialization
translation = {}
translation['hello'] = 'merhaba'
translation['goodbye'] = 'hoscakal'

print("\nThe values in the table after initialization:")
printTranslation()

-- Get the value for a given key
print("\nThe value for the key 'hello': " .. translation['hello'])

-- Add a new element
translation['one'] = 1
print("\nThe value for the key 'one': " .. translation['one'])

-- Remove an element
translation['one'] = nil
print("\nThe values in the table after 'one' is removed:")
printTranslation()

-- Modify the value of an existing element
translation['hello'] = 'selam'
print("\nThe values in the table after 'hello' is changed to 'selam':")
printTranslation()

-- Search for the existence of a key
keyHelloExists = translation['hello'] ~= nil
print("\nKey hello exists: " .. tostring(keyHelloExists))

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
