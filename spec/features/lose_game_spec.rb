feature 'Lose game' do
  scenario "display losing message when 0hp" do
    sign_in_and_play
    9.times do
      click_button "Attack player 2"
      click_button "Next turn"
      click_button "Attack player 1"
      click_button "Next turn"
    end
    click_button "Attack player 2"
    expect(page).to have_content "Hannah has lost the battle. Sorry mate!"
  end

  scenario "displays game over image" do
    sign_in_and_play
    9.times do
      click_button "Attack player 2"
      click_button "Next turn"
      click_button "Attack player 1"
      click_button "Next turn"
    end
    click_button "Attack player 2"
    expect(page).to have_css('div.gameover') 
  end
end
