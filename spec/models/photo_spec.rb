require 'rails_helper'

describe Photo, type: :model do
  it 'Is not valid without a title' do
    photo = Photo.new(title: '')
    expect(photo).to have(1).error_on(:title)
    expect(photo).not_to be_valid
  end

end
