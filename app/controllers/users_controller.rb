class UsersController < ApplicationController
	def index
		@user = current_user
	end

	def show
		@user = User.find(params[:id])
	  @user_scoreboards = @user.scoreboards
		@total_days_points = @user_scoreboards.map(&:day_points).reduce(:+)
		@total_commits = @user_scoreboards.map(&:commits).reduce(:+)
	end

end
