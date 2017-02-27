class ScoreboardsController < ApplicationController

	def new
		@scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.new(scoreboard_params)
		puts @scoreboard.inspect
		# @scoreboard.user_id = current_user.id
		# @scoreboard.day_points += 1
		@scoreboard.challenges = Challenge.where(week: @scoreboard.week.to_i, day: @scoreboard.day.capitalize)
		if @scoreboard.save
			session[:scoreboard_id] = @scoreboard.id
			redirect_to @scoreboard
		else
			flash[:failure] = "Couldn't start your game"
			render :'new'
		end
	end

	def show
		@scoreboard = Scoreboard.find(params[:id])
	end

	private

	def scoreboard_params
		params.require(:scoreboard).permit(:day, :week, :cohort)
	end

end
