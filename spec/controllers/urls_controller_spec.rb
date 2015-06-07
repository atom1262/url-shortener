require "rails_helper"

RSpec.describe UrlsController do
  describe "#create" do
    context "with valid params" do
      it "creates a url and redirects to its show page" do
        post :create, url: { original_url: "http://google.com" }

        expect(response).to be_redirect
      end
    end

    context "with invalid params" do
      it "renders new template with error flash message" do
        post :create, url: { original_url: "" }

        expect(response).to render_template :new
        expect(flash[:error]).to eq I18n.t("urls.create.failure")
      end
    end
  end
end
