def caesar_cipher(string, shift = 0)
  splitter = string.split("").to_a
  letters = ('a'..'z').to_a
  shifted_letters = letters.rotate(shift)
  result = splitter.map do |char|
    if (index = letters.index(char.downcase))
      shifted_letters[index]
    else
      char
    end
  end
  return result.join
end

new = caesar_cipher("what a burger", 5)
p new