class PatronsController < ApplicationController
	
	def new 
		@patron = Patron.new
	end

	def create 
		@patron = Patron.create(search_params)
		redirect_to @patron
	end

	def show
		@patron = Patron.find(params[:id])
	end

	

	private 
	def search_params
		params.require(:patron).permit(:title, :author, :isbn)
	end

end
