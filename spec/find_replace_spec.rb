require('rspec') 
require('find_replace')

describe Finder do 
  describe('.find_replace') do
    it("replace word in string with second argument") do
      sentence1 =  Finder.new("The cat jumped over the wall")
      expect(sentence1.find_replace('cat','dog')).to(eq("The dog jumped over the wall"))
    end
  end
end
