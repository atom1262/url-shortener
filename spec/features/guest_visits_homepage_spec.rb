require 'rails_helper'

RSpec.feature "Guest visits homepage" do
  scenario "and sees a welcome message" do
    visit root_path

    expect(page).to have_content("Welcome to my url shortener")
  end
end
