class PokemonsController < ApplicationController
	def index
		@pokemon_list = Pokemon.all
	end

	def new
	end

	def create
		new_pokemon = Pokemon.new
		new_pokemon.species = params[:species]
		new_pokemon.nickname = params[:nickname]
		new_pokemon.level = params[:level]
		new_pokemon.save

		redirect_to '/'
	end
end
