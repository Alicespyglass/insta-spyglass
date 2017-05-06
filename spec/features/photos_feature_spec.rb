require 'rails_helper'

feature 'photos' do
  context 'none have been added' do
    scenario 'should display a prompt to add a post' do
      visit '/photos'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Add a post'
    end
  end

  context 'photos have been added' do
    before do
      Photo.create(title: 'DBC')
    end

    scenario 'display photos' do
        visit '/photos'
        expect(page).to have_content('DBC')
        expect(page).not_to have_content('No posts yet')
    end
  end

  context 'creating posts' do
    scenario 'prompts user to fill in form with title, then displays the new post' do
      visit '/photos'
      click_link 'Add a post'
      fill_in 'Title', with: 'DBC'
      click_button 'Create Photo'
      expect(page).to have_content 'DBC'
      expect(current_path).to eq '/photos'

    end
  end
end
