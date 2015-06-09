require 'rails_helper'

RSpec.feature "Guest shortens url" do
  scenario "and sees a congratulations message, with the shortened url" do
    visit root_path

    fill_in "Original URL", with: "http://google.com"
    click_on "Shorten"
    new_url = Url.last

    expect(page).to have_content(I18n.t("urls.show.congrats"))
    expect(page).to have_content(
      I18n.t("urls.show.short_url", short_url: new_url.short_url)
    )
  end
end
