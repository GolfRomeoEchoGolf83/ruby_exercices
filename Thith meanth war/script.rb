print "Write something down :"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "your sentence is #{user_input}"
else 
    puts "no S overhere"
end
