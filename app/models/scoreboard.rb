class Scoreboard < ApplicationRecord
  belongs_to :user, optional: true
  has_many :challenges
  has_many :notes

  after_initialize :init

  def phase
    phase = if week < 4
              1
            elsif week < 7
              2
            else
              3
            end
    phase
    # current_user.phase
  end

  def cohort
    'squirrels'
  end

  def url
    # return "https://api.github.com/sf-#{self.cohort}-2017/phase-#{self.phase}-guide/blob/master/week-#{self.week}/#{self.day}.md"
    "https://api.github.com/repos/sf-#{cohort}-2017/phase-#{phase}-guide/blob/master/week-#{week}/#{day}.md"
  end

  def init
    if !day_points && !commits
      self.day_points = 0
      self.commits = 0
    end
  end

  def score(points)
    self.day_points += points
  end
end
