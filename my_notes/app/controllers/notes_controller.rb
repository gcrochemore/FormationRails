class NotesController < ApplicationController
	def index
		@messages = params[:messages].present? ? params[:messages] : ["World"]
		@nb_zones = params[:nb_zones].present? ? params[:nb_zones].to_i : 3
		@nb_zones = params[:ajouter].present? ? @nb_zones+1 : @nb_zones
		@nb_zones = params[:supprimer].present? ? @nb_zones-1 : @nb_zones
		ap params
	end
end
