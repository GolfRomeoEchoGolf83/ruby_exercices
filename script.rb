=begin
A simple form built with Ruby
=end
print "What is your first name ?"
first_name = gets.chomp
first_name.capitalize!

print "What is your last name ?"
last_name = gets.chomp
last_name.capitalize!

print "Where do you live ?"
city = gets.chomp
city.upcase!

puts "Hello #{first_name} #{last_name} you live in #{city}"