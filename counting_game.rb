def switch?(current_number)
  current_number%7 == 0
end

def skip?(current_number)
  current_number%11 == 0
end

def current_index(index, num_players, direction, current_number)
  if num_players == 1
    index = 0
  elsif num_players == 2 && skip?(current_number)
    index = index
  elsif direction == "forward" 
    if switch?(current_number) && skip?(current_number) 
      if index == 0
        index = -2
      elsif index == 1
        index = -1
      else
        index -= 2
      end
    elsif switch?(current_number)
      index -= 1
    elsif skip?(current_number)
      if index == (num_players - 1)
        index = 1
      elsif index == (num_players - 2)
        index = 0
      else
        index += 2
      end
    elsif index == (num_players - 1)
      index = 0
    else
      index += 1
    end
  else #direction == "reverse"
    if switch?(current_number) && skip?(current_number) 
      if index == -2
        index = 0
      elsif index == -1
        index = 1
      else
        index += 2
      end
    elsif switch?(current_number)
      if index == [-1]
        index = 0
      else
        index += 1
      end
    elsif skip?(current_number)
        index -= 2
    else
      index -= 1
    end
  end
  index
end

def counting(num_players = 10, max_num = 100)
  index = 0
  all_players = *(1..num_players)
  current_number = 1
  direction = "forward"
  while current_number < max_num
    current_person = all_players[index]
    puts "Person #{current_person} says '#{current_number}'."
    if direction == "forward"
      if switch?(current_number)
        index = current_index(index, num_players, direction, current_number)
        direction = "reverse"
      else
        index = current_index(index, num_players, direction, current_number)
      end
    else #direction == "reverse"
      if switch?(current_number)
        index = current_index(index, num_players, direction, current_number)
        direction = "forward"
      else 
        index = current_index(index, num_players, direction, current_number)
      end
    end
    current_number += 1
  end
  current_person = all_players[index]
  puts "Person #{current_person} says the last number, '#{max_num}'."
end