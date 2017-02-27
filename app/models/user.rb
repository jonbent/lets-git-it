class User < ApplicationRecord
	has_many :scoreboards

	def level
		score = self.total_score
		case score
		when score < 10
			return 1
		when 10 < score < 30
			return 2
		when 30 < score < 100 
			return 3
		end
	end

	def commits
		4
	end

end
