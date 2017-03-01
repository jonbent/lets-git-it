class UsersController < ApplicationController
	def index
		@user = current_user
		@scoreboard = current_scoreboard
	end

	def show
		@user = User.find(params[:id])
	  @user_scoreboards = @user.scoreboards
		@total_commits = @user_scoreboards.map(&:commits).reduce(:+)
		@user_scoreboards = 1 if (@user_scoreboards.nil?)
		@total_commits = 1 if (@total_commits.nil?)

	end

end
