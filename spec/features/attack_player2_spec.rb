feature 'next turn button' do
  scenario "returns to play for next turn" do
    sign_in_and_play
    click_button("Attack player 2")
    click_button("Next turn")
    expect(page).to have_content ("Josue has #{Player::MAX_HP} HP.")
  end
end