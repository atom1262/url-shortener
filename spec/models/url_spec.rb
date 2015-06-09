require "rails_helper"

RSpec.describe Url do
  it { is_expected.to validate_presence_of(:original_url) }

  describe "#short_url" do
    it "returns the shortened url based on the token" do
      url = create(:url, token: '1234' )
      binding.pry

      expect(url.short_url).to eq("http://localhost:3000/1234")
    end
  end
end
