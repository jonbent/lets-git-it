class Challenge < ApplicationRecord
  belongs_to :scoreboard, optional: true

  after_initialize :init

  def init
    if !self.completed
      self.completed = 0
    end
  end
  def completed_release
    p self
    p self.completed
    self.completed += 1
  end
end
