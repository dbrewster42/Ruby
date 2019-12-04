class Friendship < ApplicationRecord	
	belongs_to :user, :foreign_key => "user_id", :class_name => "User"
	belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"

	after_create :create_inverse
	def create_inverse
		self.class.create(user: self.friend, friend: self.user)
	end
	validates_uniqueness_of :user, scope: :friend
end
