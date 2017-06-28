require 'rails_helper'

describe "the add an album path" do
  it "adds an album to a singer" do
    singer = Singer.create(:name => 'James Brown')
    visit singers_path(singer)
    click_link 'James Brown'
    click_link 'Add Album'
    fill_in 'Title', with: 'Tea House'
    fill_in 'Year', with: '1961'
    click_on 'Create Album'
    expect(page).to have_content 'Tea House'
  end

  it "gives error when no title is entered" do
    singer = Singer.create(:name => 'James Brown')
    visit singers_path(singer)
    click_link 'James Brown'
    click_link 'Add Album'
    click_on 'Create Album'
    expect(page).to have_content 'errors'
  end
end
