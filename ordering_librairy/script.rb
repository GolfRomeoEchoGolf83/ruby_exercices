def alphabetize(arr, rev=false)
    if rev 
        arr.reverse!
    else
        arr.sort!
    end
end

numbers = [1, 7, 5, 3]
puts alphabetize(numbers)

