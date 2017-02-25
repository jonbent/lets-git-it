class ScoreboardsController < ApplicationController

	def new
		@scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.new(params[:scoreboard])
	end

	def show
		@scoreboard = Scoreboard.find(params[:id])
	end
	
end