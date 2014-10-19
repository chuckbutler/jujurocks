require 'rails_helper'

RSpec.describe DjsController, :type => :controller do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new dj" do
      expect{
        post :create, dj: FactoryGirl.attributes_for(:dj)
      }.to change(Dj,:count).by(1)
      end

      it "redirects to the new dj" do
        post :create, dj: FactoryGirl.attributes_for(:dj)
        expect(response).to redirect_to Dj.last
      end
    end

    context "with invalid attributes" do
      it "does not save the dj application" do
        expect{
          post :create, dj: FactoryGirl.attributes_for(:dj, email: 'foo@bar')
        }.to_not change(Dj, :count)
      end

      it "re-renders the new method" do
        post :create, dj: FactoryGirl.attributes_for(:dj, email: 'foo@bar')
        expect(response).to render_template(:new)
      end
    end
  end

end
