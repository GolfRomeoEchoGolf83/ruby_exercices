# get input from user 
puts text = "Write something down :"
text = gets.chomp

# ask user to find a word 
puts redact = "which word would you like to find ?"
redact = gets.chomp

# split the sentence to find the word 
words = text.split(" ")
# if word is find swap it with REDACTED
words.each do |letter|
    if letter == redact 
        print "REDACTED"
    else print letter + " "
    end 
end
