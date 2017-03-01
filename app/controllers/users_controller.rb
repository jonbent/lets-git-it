class UsersController < ApplicationController
	def index
		@user = current_user
		@scoreboard = current_scoreboard
	end

	def show
		@user = User.find(params[:id])
	  @user_scoreboards = @user.scoreboards
	end

end
