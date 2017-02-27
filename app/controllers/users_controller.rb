class UsersController < ApplicationController
	def index
		@user = current_user
		@scoreboard = current_scoreboard
	end	

end