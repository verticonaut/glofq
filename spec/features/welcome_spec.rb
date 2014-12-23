require 'rails_helper'

feature 'welcome page' do

  # not background yet
  background do
    # feature background
  end

  context 'guest users' do
    # not background yet
    background do
      # context background
    end

    scenario "willkommen", js: true do
      visit root_path
      expect(page).to have_content 'Willkommen'
    end

    scenario "there is no glossary defined", js: true do
      visit root_path
      expect(page).to have_content 'Es sind keine Glossaries definiert'
    end

    scenario "there are glossaries defined", js: true do
      create(:glossary)
      visit root_path
      expect(page).to have_content 'Anzahl Glossaries: 1'
    end
  end

  # context 'logged in user' do 
  #   scenario "displays the users name", js: true do
      # admin = create(:admin)
      # sign_in admin

      # visit root_path
      # expect{
      #   click_link 'Users'
      #   click_link 'New User'
      #   fill_in 'Email', with: 'newuser@example.com'
      #   find('#password').fill_in 'Password', with: 'secret123'
      #   find('#password_confirmation').fill_in 'Password confirmation',
      #     with: 'secret123'
      #   click_button 'Create User'
      # }.to change(User, :count).by(1)
      # expect(current_path).to eq users_path
      # expect(page).to have_content 'New user created'
      # within 'h1' do
      #   expect(page).to have_content 'Users'
      # end
      # expect(page).to have_content 'newuser@example.com'
  #   end
  # end

end
