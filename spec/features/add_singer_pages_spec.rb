require 'rails_helper'

describe "the add a singer path" do
  it "adds a new singer" do
    visit singers_path
    click_link 'New Singer'
    fill_in 'Name', :with => 'Etta James'
    fill_in 'Image', :with => 'http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html'
    click_on 'Create Singer'
    expect(page).to have_content 'Etta James'
  end

  it "gives error when no name is entered" do
    visit new_singer_path
    click_on 'Create Singer'
    expect(page).to have_content 'errors'
  end
end
