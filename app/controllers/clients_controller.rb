class ClientsController < ApplicationController

	def index
		@clients = Client.paginate(page: params[:page], per_page: 5)
	end

	def show
		@client = Client.find(params[:id])
	end
end
