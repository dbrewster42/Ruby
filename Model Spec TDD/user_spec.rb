require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
RSpec.describe User do
	it "should save" do 
      user = User.new(
        first: 'shane',
        last: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
    it "should not save if first_name field is blank" do
      user = User.new(
            first: '', 
            last: 'chang', 
            email: 'schang@codingdojo.com'
        )
      expect(user).to be_invalid
    end
    
    it "should not save if last_name field is blank" do
     user = User.new(
            first: 'chang', 
            last: '', 
            email: 'schang@codingdojo.com'
        )
      expect(user).to be_invalid
    end
    it "should not save if email already exists"  do
    user = User.create(
            first: 'chang', 
            last: 'ching', 
            email: 'schang@codingdojo.com'
        )	
    user2 = User.new(
            first: 'ching', 
            last: 'chang', 
            email: 'schang@codingdojo.com'
        )
    expect(user2).to be_invalid
    end
    
    it "should not save if invalid email format"  do
     user = User.new(
            first: 'chang', 
            last: 'asdfsa', 
            email: 'alskdjf.com'
        )
      expect(user).to be_invalid
    end
end