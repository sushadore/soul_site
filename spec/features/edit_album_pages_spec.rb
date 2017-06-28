require 'rails_helper'

describe "the edit an album path" do
  it "edits an album" do
    singer = Singer.create(:name => 'James Brown')
    album = Album.create(title: 'Tea House', year: '1990')
    visit singer_path(singer)
    click_on 'Edit'
    # visit edit_singer_album_path(singer.id, album.singer_id)
    # Capybara::ElementNotFound:Unable to find field "Title"
    fill_in 'Title', with: 'Tea Houses'
    fill_in 'Year', with: '1961'
    click_on 'Update Album'
    expect(page).to have_content 'Tea Houses'

  end
end
