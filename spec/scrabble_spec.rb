require('rspec') 
require('scrabble') 

describe('Scrabble#tally_score') do

  it("if word includes A increment point by one") do
    expect(tally_score('apple')).to(eq(9))
  end
  it("if word is Dog there should be 5 points") do
    expect(tally_score('dog')).to(eq(5))
  end
  it("if word is Numbers there should be 5 points") do
    expect(tally_score('Numbers')).to(eq(11))
  end
  it("if word is determines there should be 5 points") do
    expect(tally_score('determines')).to(eq(13))
  end

end 

