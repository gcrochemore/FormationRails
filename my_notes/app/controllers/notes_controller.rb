class NotesController < ApplicationController
	def index
		@messages = params[:messages].present? ? params[:messages] : ["World"]
		ap params
	end
end
