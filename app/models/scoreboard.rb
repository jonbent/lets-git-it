class Scoreboard < ApplicationRecord
  belongs_to :user
  has_many :challenges
  has_many :notes
end
