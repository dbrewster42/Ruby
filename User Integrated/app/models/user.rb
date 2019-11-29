class User < ApplicationRecord
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates :age, presence: false, numericality: { only_integer: true, greater_than: 9, less_than: 151 }
	after_initialize :set_defaults, unless: :persisted?

	def set_defaults
    self.first_name  ||= 'Bob'
    # self.bool_field = true if self.bool_field.nil?
  end
end
