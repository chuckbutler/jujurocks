require 'rails_helper'

RSpec.describe Podcast, :type => :model do
  describe "Creation" do
    context "Valid Attributes" do
      before(:each) do
        @pod = FactoryGirl::build(:podcast)
      end
      it "Creates a podcast with valid attributes" do
        expect(@pod).to be_valid
      end
    end
    context "Invalid Attributes" do
      it "fails without a title" do
        pod = FactoryGirl::build(:podcast, title: nil)
        expect(pod).to_not be_valid
      end
      it "fails without a url" do
        pod = FactoryGirl::build(:podcast, url: nil)
        expect(pod).to_not be_valid
      end
      it "fails with a malformed url" do
        pod = FactoryGirl::build(:podcast, url: 'foo.com')
        expect(pod).to_not be_valid
      end
      it "fails without a title" do
        pod = FactoryGirl::build(:podcast, description: nil)
        expect(pod).to_not be_valid
      end
    end
  end
end
