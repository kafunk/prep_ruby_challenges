def combinations(array1, array2)
  combo_array = []
  array1.each do |first_half|
    index = 0
    while index < array2.length
      second_half = array2[index]
      combo_array << (first_half + second_half)
      index += 1
    end
  end
  combo_array
end