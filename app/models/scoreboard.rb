class Scoreboard < ApplicationRecord
  belongs_to :user
  has_many :challenges
  has_many :notes

  def phase
  	if self.week < 4
  		phase = 1
  	elsif self.week < 7
  		phase = 2
  	else
  		phase = 3
  	end
  	phase
  	# current_user.phase
  end

  def cohort
  	"squirrels"
  end


  def url
  	# return "https://api.github.com/sf-#{self.cohort}-2017/phase-#{self.phase}-guide/blob/master/week-#{self.week}/#{self.day}.md"
    return "https://api.github.com/repos/sf-#{self.cohort}-2017/phase-#{self.phase}-guide/blob/master/week-#{self.week}/#{self.day}.md"

  end

end
