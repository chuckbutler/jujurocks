require 'rails_helper'

RSpec.describe Tag, :type => :model do
  describe "when created" do
    context "with valid attributes" do
        it "saves successfully" do
          tag = FactoryGirl.build(:tag)
          expect(tag).to be_valid
        end
    end
    context "with invalid attributes" do
        it "fails without a tag name" do
          tag2 = FactoryGirl.build(:tag, name: nil)
          expect(tag2).to_not be_valid
        end
        it "fails with duplicate name" do
          tag = FactoryGirl.create(:tag, name: 'foo')
          expect(tag).to be_valid
          tag2 = FactoryGirl.build(:tag, name: 'Foo')
          expect(tag2).to_not be_valid

        end
    end
  end
end
