puts "Write a sentence :"
text = gets.chomp
words = text.split

# creating an hash 
frequencies = Hash.new(0)

# iterating over the array
words.each {|word| frequencies[word] += 1}

# sorting the hash
frequencies = frequencies.sort_by do 
    |word, count| count
end

frequencies.reverse!

# iterating over the hash