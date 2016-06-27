def is_prime?(number)
  is_prime = true
  divisor = 2
  if number%2 != 0
    while divisor < number
      if number % divisor == 0
        is_prime = false
        break
      else
        divisor += 1
      end
    end
  else
    is_prime = false
  end
  is_prime
end