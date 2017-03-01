class User < ApplicationRecord
	has_many :scoreboards
	after_initialize :init
	serialize :user_hash, JSON

	def init
		# self.number_commits = 0
		# self.total_points = 0
		# self.user_hash = {}
	end

	def level
		level = Math.sqrt(self.total_points).floor
	end

end
