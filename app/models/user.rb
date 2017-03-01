class User < ApplicationRecord
	has_many :scoreboards
	after_initialize :init
	serialize :user_hash, JSON

	def init
		# self.number_commits = 0
		# self.total_points = 0
		# self.user_hash = {}
	end

	def all_user_points
		self.scoreboards.map(&:day_points).reduce(:+)
	end

	def level
		return 0 if (self.all_user_points).nil?

		if self.all_user_points > 300
			return 4
		elsif self.all_user_points > 150
			return 3
		elsif self.all_user_points > 50
			return 2
		elsif self.all_user_points > 10
			return 1
		elsif self.all_user_points < 10
			return 0
		end
	end

end
