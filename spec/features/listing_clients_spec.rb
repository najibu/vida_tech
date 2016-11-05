require 'rails_helper'

RSpec.feature 'Listing Clients' do
  before do
    @client = Client.create(full_name: 'William Christopher')
  end

  scenario 'List all clients full names' do
    visit '/clients'

    expect(page).to have_content(@client.full_name)
  end
end