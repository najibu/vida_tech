class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to clients_path
  	end
  end
end
