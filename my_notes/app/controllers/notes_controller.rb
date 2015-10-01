class NotesController < ApplicationController
	def index
		if params[:user].present? 
			note = Note.new(:user => params[:user], :content => params[:content])
			note.save
		end
		@notes = Note.all
	end
	def show
		@note = Note.find(params[:id])
	end
	def preview
		@note = Note.find(params[:id])
	end
	def destroy
		@note = Note.find(params[:id]).destroy
		redirect_to "/"
	end
end
