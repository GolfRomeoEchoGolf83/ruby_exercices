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
puts "Add a movie title"
title = gets.chomp.downcase
#test if the movie has aleady been added to the DB
if movies[title.to_sym].nil? 
    puts "Add a rating from 1 to 5"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "You added #{title.capitalize} with a rating of #{rating}"
    else 
        puts "Your movie has already been added."
    end
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