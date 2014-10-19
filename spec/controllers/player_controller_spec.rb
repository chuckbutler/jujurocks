require 'rails_helper'

RSpec.describe PlayerController, :type => :controller do
  context "GET" do
    it "renders the index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
