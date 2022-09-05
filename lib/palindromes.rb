class Palindrome 

  attr_accessor(:word)

  def initialize(word) 
    @word = word
  end 

  def check_palindrome() 
    reversed_word = @word.reverse() 
    if reversed_word == @word 
      return true
    else
      return false 
    end
  end

end
