class ScoreboardsController < ApplicationController
  def new; end

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
      render partial: 'score_commits', locals: { scoreboard: @scoreboard }
    else
      redirect_to @scoreboard
    end
  end

  def download
    @scoreboard = Scoreboard.find(params[:id])
    path = "week#{@scoreboard.week}_#{@scoreboard.day}.txt"; array = []
    notes_string = ''
    @scoreboard.notes.each do |note|
      notes_string += 'Title: '
      notes_string += note.title + "\n\n"

      notes_string += "Body: \n"
      notes_string += note.body + "\n\n"
    end

    File.open(path, 'w+') do |f|
      f.write(notes_string)
    end

    send_file path
  end

  private

  def scoreboard_params
    params.require(:scoreboard).permit(:day, :week, :cohort)
  end
end
