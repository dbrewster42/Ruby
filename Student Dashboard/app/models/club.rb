class Club < ApplicationRecord
	has_many :strippers
	validates :name, :city, presence: true
	validates :rating, numericality: { only_integer: true, less_than: 6, greater_than: 0 }
end
