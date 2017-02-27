class UsersController < ApplicationController
	def index
		@user = current_user
		@scoreboard = @user.scoreboards.last
	end	

end