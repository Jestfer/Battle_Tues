feature 'changes turns' do
  scenario 'confirms attack when attack player 1 button' do
    sign_in_and_play
    click_button("Attack player 2")
    click_button("Next turn")
    click_button("Attack player 1")
    expect(page).to have_content("Hannah attacks Josue")
  end
end