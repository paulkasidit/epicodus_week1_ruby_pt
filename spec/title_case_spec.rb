require('rspec') 
require('title_case') 

describe('#title_case') do  
  it ("function capitalizes first word of each letter") do 
    expect(title_case('love me or leave me')).to(eq('Love Me or Leave Me'))
  end 
end