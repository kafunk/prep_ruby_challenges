def power(base, exponent)
  result = base
  (exponent - 1).times do
    result = result * base
  end
  result
end