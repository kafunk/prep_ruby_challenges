def factorial(number)
  number = number.to_i
  if number < 0
    puts "Please choose a positive integer."
  elsif number == 0 || number == 1
    return 1
  else
    factorial = number * factorial(number - 1) 
  end
end