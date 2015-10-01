class NotesController < ApplicationController
	def index
		if params[:user].present? 
			note = Note.new(:user => params[:user], :content => params[:content])
			note.save
		end
		@notes = Note.all
	end
end
