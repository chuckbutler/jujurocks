require 'rails_helper'

RSpec.describe Episode, :type => :model do
  describe "Creation" do
    context "Valid Attributes" do
      before :each do
        @epi = FactoryGirl.build(:episode)
      end
      it "Creates successfully" do
        expect(@epi).to be_valid
      end
    end
    context "With Invalid Attributes" do
      it "Fails without a title" do
        epi = FactoryGirl.build(:episode, title: nil)
        expect(epi).to_not be_valid
      end
      it "Fails without a url" do
        epi = FactoryGirl.build(:episode, url: nil)
        expect(epi).to_not be_valid
      end
      it "Fails with an invalid url" do
        epi = FactoryGirl.build(:episode, url: 'foo.com')
        expect(epi).to_not be_valid
      end
    end
  end
end
