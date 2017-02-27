class Challenge < ApplicationRecord
  belongs_to :scoreboard, optional: true
end
