def ping_pong(user_input) 
  x = 0
  output = [] 
  while(x < user_input) 
    x = x + 1
    if (x % 3 === 0) 
      output.push("ping") 
    elsif(x % 5 === 0)
      output.push("pong") 
    else 
      output.push(x) 
    end 
  end 
  return output
end 

