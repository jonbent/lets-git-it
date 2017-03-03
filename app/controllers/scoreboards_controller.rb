class ScoreboardsController < ApplicationController

	def new
		# @scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.find_or_create_by(user_id: current_user.id, day: scoreboard_params[:day], week: scoreboard_params[:week])
		@scoreboard.challenges = Challenge.where(week: @scoreboard.week.to_i, day: @scoreboard.day.capitalize)
		redirect_to @scoreboard
	end

	def leaderboard
		@users = User.where.not(total_points: nil).order(total_points: :desc).limit(10)
	end

	def show
		@scoreboard = Scoreboard.find(params[:id])
	end

	def update
		@scoreboard = Scoreboard.find(params[:id])
		@scoreboard.score(1)
		@scoreboard.save
		if request.xhr?
			render partial: 'score_commits', locals: {scoreboard: @scoreboard}
		else
			redirect_to @scoreboard
		end
	end

	def download
		path = "notes_for_day.txt"; array=[]

		@scoreboard.notes.each do |element|
			array << "TITLE: "
			array << element.title

			array << "BODY: "
			array << element.body
		end


		File.open(path, "w+") do |f|
		  f.write(array)
		end


		send_file "notes_for_day.txt"
	end

	private
	def scoreboard_params
		params.require(:scoreboard).permit(:day, :week, :cohort)
	end

end
