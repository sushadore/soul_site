require 'rails_helper'

describe "the edit a singer process" do
  it "edits a singer" do
    Singer.create(:name => 'Etta James')
    visit singers_path
    click_on 'Etta James'
    click_on 'Delete'
    expect(page).to have_content ''
  end
end
