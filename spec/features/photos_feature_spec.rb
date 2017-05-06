require 'rails_helper'

feature 'Photos' do
  context 'None have been added' do
    scenario 'Should display a prompt to add a post' do
      visit '/photos'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Add a post'
    end
  end

  context 'Photos have been added' do
    before do
      Photo.create(title: 'DBC')
    end

    scenario 'Display photos' do
        visit '/photos'
        expect(page).to have_content('DBC')
        expect(page).not_to have_content('No posts yet')
    end
  end

  context 'Creating posts' do
    scenario 'Prompts user to fill in form with title, then displays the new post' do
      visit '/photos'
      click_link 'Add a post'
      fill_in 'Title', with: 'DBC'
      click_button 'Create Photo'
      expect(page).to have_content 'DBC'
      expect(current_path).to eq '/photos'
    end
  end

  context 'Viewing posts' do

    let!(:dbc){ Photo.create(title:'DBC')}

    scenario 'Lets user view a post' do
      visit '/photos'
      click_link 'DBC'
      expect(page).to have_content 'DBC'
      expect(current_path).to eq "/photos/#{dbc.id}"
    end
  end
end
