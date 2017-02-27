class User < ApplicationRecord
	has_many :scoreboards
	after_initialize :init

	def init
		self.number_commits = 0
		self.total_points = 0
	end

end
