class User < ApplicationRecord
	has_many :scoreboards
	after_initialize :init

	def init
		self.number_commits = 0
		self.total_points = 0
	end
		def level
		score = self.total_points_change
		# unless score
		# 	score = 0
		# end
		# case score
		# when score < 10
		# 	return 1
		# when 10 < score < 30
		# 	return 2
		# when 30 < score < 100 
		# 	return 3
		# end
		1
	end

end
