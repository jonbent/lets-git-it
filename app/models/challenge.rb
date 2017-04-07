class Challenge < ApplicationRecord
  belongs_to :scoreboard, optional: true

  after_initialize :init

  def init
    self.completed = 0 unless completed
  end

  def completed_release
    p self
    p completed
    self.completed += 1
  end
end
