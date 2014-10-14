require 'rails_helper'

RSpec.describe TermsController, :type => :controller do

  describe "GET broadcast" do
    it "returns http success" do
      get :broadcast
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET content" do
    it "returns http success" do
      get :content
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET codeofconduct" do
    it "returns http success" do
      get :codeofconduct
      expect(response).to have_http_status(:success)
    end
  end

end
