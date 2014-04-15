require 'spec_helper'
require 'pry'

feature "Adding roar" do
  scenario "Want to add a roar" do
    visit '/users/sign_up'
    fill_in "user_email", with: "peter@handsome.com"
    fill_in "user_password", with: "thatsrightpeople"
    fill_in "user_password_confirmation", with: "thatsrightpeople"
    click_button "Sign up"

    visit '/users/13'
    fill_in 'roar[roar]', with: "Rackenaphobia!?"
    click_button 'Roar'
    expect(page).to have_content 'Rackenaphobia!?'
  end
end
