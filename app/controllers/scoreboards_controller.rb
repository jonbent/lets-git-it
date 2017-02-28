class ScoreboardsController < ApplicationController

	def new
		@scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.new(scoreboard_params)
		@scoreboard.init
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

	def update


		@scoreboard = current_scoreboard
		p @scoreboard.id
		@scoreboard.score(1)
		p @scoreboard.day_points
		@scoreboard.save
		redirect_to @scoreboard
	end

	private

	def scoreboard_params
		params.require(:scoreboard).permit(:day, :week, :cohort)
	end

end
