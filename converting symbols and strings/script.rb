strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each do |s|
    symbol = s.to_sym
    symbols.push(symbol)
end

puts symbols