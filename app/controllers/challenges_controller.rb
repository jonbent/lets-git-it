class ChallengesController < ApplicationController
## routes needed: create, update, show, index
	@day = "week1wed"

	def index
		@challenges = Challenge.all
	end

	def create
		@challenge = Challenge.new(params[:challenge])
	end

	def show
		@challenge = Challenge.find(params[:id])
	end

	def update
		@challenge.assign_attributes(params[:challenge])
	end


end