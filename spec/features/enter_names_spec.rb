feature 'players can enter their names on the screen' do
  scenario 'inputted names are displayed' do
    sign_in_and_play
    expect(page).to have_content("Josue vs. Hannah")
  end
end
