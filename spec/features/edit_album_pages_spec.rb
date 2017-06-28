require 'rails_helper'

describe "the edit an album path" do
  it "edits an album" do
    singer = Singer.create name: 'James Brown'
    visit singers_path
    click_on 'James Brown'
    click_on 'Add Album'
    fill_in 'Title', with: 'Tea House'
    fill_in 'Year', with: '1961'
    click_on 'Create Album'
    click_on 'Edit'
    fill_in 'Title', with: 'Tea Houses'
    click_on 'Update Album'
    expect(page).to have_content 'Tea Houses'

  end
end
