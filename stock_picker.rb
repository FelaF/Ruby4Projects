stocks = [17,3,6,9,15,8,6,100,10]




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
  ultimate = []
  sorted_by_positive_difference.each do |sub_array|
    index_element_zero = array_of_numbers.find_index(sub_array[0])
    index_element_one = array_of_numbers.find_index(sub_array[1])
    puts ("#{index_element_zero}, #{sub_array})")
    puts ("#{index_element_one}, #{sub_array})")
    if (index_element_one > index_element_zero)
      ultimate.push(sub_array)
    end
  end

  divider = ""
  divider2 = "###"
  divider3 = "!!!"
  return [ultimate[0][0],ultimate[0][1],"outcome of $#{ultimate[0][2]}"]


end

p stock_picker(stocks)