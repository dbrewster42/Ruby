class Stripper < ApplicationRecord
  belongs_to :club
  validates :name, :club, presence: true
end
