movies = {
    topgun: 5,
    gijane: 4
}


puts "Would you add, update, display or delete a movie ?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp

case choice 
# adding a movie
when "add"
# updating a movie
when "update"
# display the DB
when "display"
# delete a movie
when "delete"
# Error management 
else 
    puts "Error!"
end