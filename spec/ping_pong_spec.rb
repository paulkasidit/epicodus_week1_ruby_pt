require('rspec') 
require('ping_pong') 

describe('#ping_pong') do
  it("returns an array of ascending numbers up to the number entered") do
   expect(ping_pong(2)).to(eq([1,2]))
 end
 it("returns an array of ascending numbers up to the number entered with %3 === 0 numbers replaced with ping") do
  expect(ping_pong(3)).to(eq([1,2,"ping"]))
  end
end 


  






