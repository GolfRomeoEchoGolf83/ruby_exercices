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
puts "what movie do you want to update ?"
title = gets.chomp.downcase

# test if the movie already exist
if movies[title.to_sym].nil?
    puts "The movie you are looking for does not exist"
else 
    puts "Update the movie's rating"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with the new rating #{rating}"
end

# displaying DB
when "display"
movies.each { 
    |movie, rating| 
    puts "#{movie}: #{rating}" 
}

# deleting movie from DB
when "delete"
puts "Which movie would you want to delete ?"
title = gets.chomp.downcase
# test if the movie exist in the DB
if movies[title.to_sym].nil?
    puts "The movie does not exist or it already has been deleted from the database"
else 
    movies.delete(title)
    puts "The movie has been deleted"
end

# error management
else 
    puts "You did not type any of the four options."
    puts "Please choose : "
    puts "--add," 
    puts "--update," 
    puts "--display or " 
    puts "-- delete option only."
end