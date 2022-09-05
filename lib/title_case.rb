def title_case(user_string) 

  output = []
  split_user_string  = user_string.split(" ") 

  split_user_string.each do |array_object| 
    if array_object === "for" || array_object === "if" || array_object === "of" || array_object === "in" || array_object === "the" || array_object === "at" || array_object === "on" || array_object === "is" || array_object === "a" || array_object === "or"
      output.push(array_object)
    else
      output.push(array_object.capitalize)
    end
  end 
  output_string = output.join(' ') 
  return output_string 
end 

