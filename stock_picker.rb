stocks = [17,3,6,9,15,8,6,1,10]




def stock_picker(array_of_numbers)
  sorted = array_of_numbers.sort
  differences = Array.new
  array_of_numbers.each do |number|
    sorted.each do |inner_number|
      difference = inner_number - number
      differences.push([number, inner_number, difference])
    end
  end
  positive_difference = Array.new
  differences.each do |sub_array|
    if (sub_array[2] > 0)
      positive_difference.push(sub_array)
    end
  end
  sorted_by_positive_difference = Array.new
  sorted_by_positive_difference = positive_difference.sort_by {|sub_array| -sub_array[2]}
  divider = ""
  divider2 = "*"
  divider3 = "!!!"
  penultimate = Array.new
  sorted_by_positive_difference.each do |sub_array|
    while (i < array_of_numbers.length) do
      index_element_zero = array_of_numbers.find_index(sub_array[0])
      index_element_one = array_of_numbers.find_index(sub_array[1])
      p ("#{index_element_zero}, #{sub_array})")
      p ("#{index_element_one}, #{sub_array})")
      if (index_element_one > index_element_zero)
        penultimate.push(sub_array)
      end
      index_element_one = 0
      index_element_zero = 0
      i += 1
    end
  end

  return sorted, divider, positive_difference, divider3, penultimate


end

p stock_picker(stocks)