require 'rails_helper'

feature "Contact Creation" do 
  scenario "allows acess to contacts page" do
    visit '/contacts'

    expect(page).to have_content 'Contact us'
  end
end