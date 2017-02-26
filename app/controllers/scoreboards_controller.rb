class ScoreboardsController < ApplicationController

	def new
		@scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.new(scoreboard_params)
		@scoreboard.user_id = current_user.id
		if @scoreboard.save
			redirect_to scoreboard_path(@scoreboard)
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
		params.require(:scoreboard).permit(:day, :week)
	end

end
