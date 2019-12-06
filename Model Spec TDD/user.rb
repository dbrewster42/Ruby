class User < ApplicationRecord
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first, :last, :email, presence: true
	validates :email, uniqueness: true, format: { with: EMAIL_REGEX }
end
