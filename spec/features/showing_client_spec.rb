require 'rails_helper'

RSpec.feature "Showing a client" do 
	before do 
		@client = Client.create(full_name: 'John Joshua', email: 'example@example.com', phone_number: '599-940-9640')
	end

	scenario "Display client information" do 
		visit '/clients'

		click_link @client.full_name 

		expect(page).to have_content(@client.full_name)
		expect(page).to have_content(@client.email)
		expect(page).to have_content(@client.phone_number)
	end
end