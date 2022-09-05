require('rspec') 
require('palindromes')

describe Palindrome do 
  describe('.check_palindrome') do
    it("will return true if word is palindrome, false if not") do
      word1 =  Palindrome.new("kayak")
      expect(word1.check_palindrome()).to(eq(true)) #kayak
      end
    end
  describe('.check_palindrome') do
    it("will return true if word is palindrome, false if not") do
      word1 =  Palindrome.new("cat")
      expect(word1.check_palindrome()).to(eq(false)) #tac
      end
    end
end