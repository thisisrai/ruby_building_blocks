# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"


def caesar_cipher(string, int)
string_array = string.split(" ")
alphabet_down = ("a".."z").to_a
alphabet_up = ("A".."Z").to_a
output_array =[]
n = 0
  string_array.each do |word|
    word_array = []
    word.chars.each do |el|
      if alphabet_down.include?(el)
        word_array << shifter(el, int)
      elsif alphabet_up.include?(el)
        word_array << upcase_shifter(el, int)
      else
        word_array << el
      end

    end
    output_array << word_array.join("")
  end
  output_array.join(" ")
end


def shifter(char, int)
  hash = {}
  reverse_hash = {}
  ("a".."z").to_a.each_with_index do |el, index|
    hash[el] = index
    reverse_hash[index] = el
  end
  if hash[char] + 5 > 25
    output = reverse_hash[hash[char]-21]
  else
    output = reverse_hash[hash[char]+5]
  end
  output
end

def upcase_shifter(char, int)
  hash = {}
  reverse_hash = {}
  ("A".."Z").to_a.each_with_index do |el, index|
    hash[el] = index
    reverse_hash[index] = el
  end
  if hash[char] + 5 > 25
    output = reverse_hash[hash[char]-21]
  else
    output = reverse_hash[hash[char]+5]
  end
  output
end

puts caesar_cipher("What a string!", 5)
