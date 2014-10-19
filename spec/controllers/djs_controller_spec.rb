require 'rails_helper'

RSpec.describe DjsController, :type => :controller do
  describe "GET index" do
      it "redirects to :action => :new" do
        get 'index'
        expect(response.code).to eq("302")
      end
  end
  describe "#create" do
    it "creates a DJ application" do
      print(FactoryGirl.attributes_for(:dj))
      expect {
        post :create, {dj: FactoryGirl.attributes_for(:dj, id: 1)}
      }.to change(Dj, :count).by(1)
    end
  end
end
