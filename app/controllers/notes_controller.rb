class NotesController < ApplicationController


	@day = "week1wed" #we kind of need it?

	def index
		@scoreboard = Scoreboard.find(params[:scoreboard_id])
		@notes = Note.all.order(:note_type)
	end

	def new
		@note = Note.new
	end
	def create
		@note = Note.new(params[:note])
	end

	def show
		@note = Note.find(params[:id])
	end

	def update
		@note.assign_attributes(params[:note])
	end

end
