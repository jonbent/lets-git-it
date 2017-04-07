class User < ApplicationRecord
  has_many :scoreboards
  after_initialize :init
  serialize :user_hash, JSON

  def init
    if !number_commits && !total_points
      self.number_commits = 0
      self.total_points = 0
      # self.user_hash = {}
    end
  end

  def total_days_points
    if scoreboards.size.zero?
      0
    else
      scoreboards.map(&:day_points).reduce(:+)
    end
  end

  def total_commits
    if scoreboards.size.zero?
      0
    else
      scoreboards.map(&:commits).reduce(:+)
    end
  end

  def level
    # level = Math.sqrt(self.total_points).floor
    return 0 if total_days_points.nil?

    if total_days_points > 300
      return 4
    elsif total_days_points > 150
      return 3
    elsif total_days_points > 50
      return 2
    elsif total_days_points > 10
      return 1
    elsif total_days_points < 10
      return 0
    end
  end

  def level_extra
    return 0 if total_days_points.nil?
    score = total_days_points

    if level >= 4
      return (score - 300)
    elsif level == 3
      return ((score - 150) / 3).round(2)
    elsif level == 2
      return ((score - 50) / 1.5).round(2)
    elsif level == 1
      return ((score - 10) * 2)
    elsif level == 0
      return score / 10
    end
  end
end
