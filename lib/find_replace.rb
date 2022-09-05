 class Finder  

  attr_accessor(:sentence_string) 

  def initialize(sentence_string) 
    @sentence_string = sentence_string 
  end 

  def find_replace(word1, word2) 
    new_sentence = @sentence_string.gsub(word1,word2)
  end

end
