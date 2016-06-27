def uniques(array)
  array & array
end

def uniques(array)
  require 'set'
  return array.to_set.to_a
end

def uniques(array)
  unique_array = []
  array.each do |element| 
    unique_array << element unless unique_array.include?(element)
  end
  unique_array
end