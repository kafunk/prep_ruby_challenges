def overlap?(rectangle1, rectangle2)
  overlap = false
  if rectangle1[0][0] < rectangle2[0][0]
    if rectangle1[1][0] > rectangle2[0][1]
      overlap = true
    end
  elsif rectangle1[0][1] < rectangle2[1][0]
    overlap = true
  end
  overlap
end