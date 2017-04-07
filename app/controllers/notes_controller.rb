class NotesController < ApplicationController
  @day = 'week1wed' # we kind of need it?

  def index
    @scoreboard = Scoreboard.find(params[:scoreboard_id])
    @notes = Note.all.order(:note_type)
  end

  def new
    @scoreboard = Scoreboard.find(params[:scoreboard_id])
    @note = Note.new
  end

  def create
    @scoreboard = Scoreboard.find(params[:scoreboard_id])
    @note = Note.new(notes_params)
    if request.xhr? && @note.save
    elsif !request.xhr? && @note.save
      redirect_to scoreboard_notes_path(@scoreboard)
    end
  end

  def show
    @scoreboard = Scoreboard.find(params[:scoreboard_id])
    @note = Note.find(params[:id])
  end

  def update
    @scoreboard = Scoreboard.find(params[:scoreboard_id])
    @note.assign_attributes(params[:note])
  end

  private

  def notes_params
    params.require(:note).permit(:title, :body, :note_type, :scoreboard_id)
  end
end
