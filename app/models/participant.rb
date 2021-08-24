class Participant < ApplicationRecord
  validates :name, :surname,  presence: true
  has_many :addresses
end
