class ScoreboardsController < ApplicationController


	def new
		@scoreboard = Scoreboard.new
	end

	def create
		@scoreboard = Scoreboard.find_or_create_by(user_id: current_user.id, day: scoreboard_params[:day], week: scoreboard_params[:week])
		@scoreboard.challenges = Challenge.where(week: @scoreboard.week.to_i, day: @scoreboard.day.capitalize)
		# if @scoreboard.save
		session[:scoreboard_id] = @scoreboard.id
		redirect_to @scoreboard
		# else
		# 	flash[:failure] = "Couldn't start your game"
		# 	render :'new'
		# end
	end

	def show
		@scoreboard = Scoreboard.find(params[:id])
	end

	def update
		@scoreboard = current_scoreboard
		# @scoreboard.score(1)
		@scoreboard.update_attributes(day_points: @scoreboard.day_points + 1)
		p @scoreboard
		if @scoreboard.save
			puts "it saved"
		end
		if request.xhr?
			render partial: 'score_commits', locals: {scoreboard: @scoreboard}
		else
			redirect_to @scoreboard
		end
	end

	def download
		path = "path.txt"; array=[]

		current_scoreboard.challenges.each do |element|
			array << element.title
		end

		File.open(path, "w+") do |f|
		  f.write(array)
		end

		send_file "path.txt"
	end

	private

	def scoreboard_params
		params.require(:scoreboard).permit(:day, :week, :cohort)
	end

end
