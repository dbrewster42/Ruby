require "spec_helper"
RSpec.describe Stringer do
 it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it "shortens the string length to the given number" do
  	expect(Stringer.minify "Hello World", 4).to eq("Hell")
  end
  it 'subs an old set with a new' do
  	expect(Stringer.subst "Hello World", "o", "i").to eq("Helli World")
  end
  it 'converts a string into array' do
  	expect(Stringer.tokenize "Hello big world").to eq(["Hello", "big", "world"])
  end
  it "removes a portion from the string" do
  	expect(Stringer.removify "I'm not a developer", "not ").to eq("I'm a developer")
  end
end

