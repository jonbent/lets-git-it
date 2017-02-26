class NotesController < ApplicationController


	@day = "week1wed" #we kind of need it?

	def index
		@notes = Note.all.order(:note_type)
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
