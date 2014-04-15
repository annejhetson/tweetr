feature "Adding roar" do
  scenario "Want to add a roar" do
    visit '/users/:id'
    fill_in 'roar', with: "Rackenaphobia!?"
    click_button 'Roar'
    expect(page).to have_contect 'Rackenaphobia!?'
  end
end
