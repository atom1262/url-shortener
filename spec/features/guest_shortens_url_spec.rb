require 'rails_helper'

RSpec.feature "Guest shortens url" do
  scenario "and sees a congratulations message, with the shortened url" do
    visit root_path

    fill_in "Original URL", with: "http://google.com"
    click_on "Shorten"

    expect(page).to have_content(
      "Congratulations! Your URL has been shortened"
    )
    expect(page).to have_content("Shortened URL:")
  end
end
