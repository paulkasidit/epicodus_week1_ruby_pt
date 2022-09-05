def tally_score(word)

one_point_letters = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
two_point_letters = ['D', 'G']
three_point_letters = ['B', 'C', 'M', 'P']
four_point_letters =  ['F', 'H', 'V', 'W', 'Y'] 
five_point_letters = ['K']
eight_point_letters = ['J', 'X' ]
ten_point_letters = ['Q', 'Z']

split_sentence_array = processString(word) 
points  = 0 
split_sentence_array.each do |array_object|
    if (one_point_letters.include?(array_object))
      points += 1 
    elsif (two_point_letters.include?(array_object))
      points += 2 
    elsif (three_point_letters.include?(array_object))
      points += 3 
    elsif (four_point_letters.include?(array_object))
      points += 4 
    elsif (five_point_letters.include?(array_object))
      points += 5 
    elsif (eight_point_letters.include?(array_object))
      points += 8 
    elsif (ten_point_letters.include?(array_object))
      points += 10 
    else
      point += 0 
    end
  end

  return points
end

def processString(word) 
  processing_array = [] 
  splitted_string = word.upcase.split('')
  splitted_string.each do |letter| 
      processing_array.push(letter)
  end
  return processing_array
end



