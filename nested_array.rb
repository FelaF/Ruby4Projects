# Example nested array
nested_array = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Function to map elements in a nested array
def map_nested_array(array, &block)
  array.map do |element|
    if element.is_a?(Array)
      # If the element is an array, recursively apply the mapping function
      map_nested_array(element, &block)
    else
      # Otherwise, apply the block directly to the element
      block.call(element)
    end
  end
end

# Example usage: double every number in the nested array
result = map_nested_array(nested_array) do |num|
  num * 2  # Double each number
end

# Print the result
puts "Original nested array: #{nested_array.inspect}"
puts "Mapped nested array: #{result.inspect}"