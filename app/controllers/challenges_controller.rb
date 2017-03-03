class ChallengesController < ApplicationController
## routes needed: create, update, show, index
	@day = "week1wed"

	def index
		@scoreboard = Scoreboard.find(params[:scoreboard_id])
		@challenges = @scoreboard.challenges
	end

	def new
		@scoreboard = Scoreboard.find(params[:scoreboard_id])
		@challenge = Challenge.new
	end

	def create
		@scoreboard = Scoreboard.find(params[:scoreboard_id])
		params[:scoreboard_id] = (params[:scoreboard_id]).to_i
		@challenge = Challenge.create(challenge_params)
		redirect_to scoreboard_challenges_path(@scoreboard)
	end

	def update
		@scoreboard = Scoreboard.find(params[:scoreboard_id])
		@challenge = Challenge.find(params[:id])
		if request.xhr?
			@challenge.completed_release
			@challenge.save
		end
	end

	private
	def challenge_params
		params.require(:challenge).permit(:title, :releases, :completed, :scoreboard_id)
	end

end
