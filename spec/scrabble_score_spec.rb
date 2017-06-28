require('rspec')
require('scrabble_score')
 
describe('String#scrabble') do
it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
it("returns a scrabble score for a letter") do
    expect("abc".scrabble()).to(eq(7))
  end
end