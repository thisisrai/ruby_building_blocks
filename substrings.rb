#Implement a method substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
#  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#  > substrings("below", dictionary)
#  => {"below"=>1, "low"=>1}

#  > substrings("Howdy partner, sit down! How's it going?", dictionary)
#  => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)

  result = Hash.new(0)
  string_array = string.downcase.split(" ")
  array.each do |word|
    string_array.each do |string_word|
      if string_word.include?(word)
        result[word] += 1
      end
    end
  end
  result
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
