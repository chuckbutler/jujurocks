require 'rails_helper'

RSpec.describe Contact, :type => :model do
  describe "creation" do
    context "valid attribrutes" do
      it "creates a message when valid" do
        msg = FactoryGirl.build(:contact)
        expect(msg).to be_valid
      end

      context "invalid attributes" do
        it "fails without a name" do
          msg = FactoryGirl.build(:contact, name: nil)
          expect(msg).to_not be_valid
        end

        it "fails without a valid email" do
          msg = FactoryGirl.build(:contact, email: 'foo@bar')
          expect(msg).to_not be_valid
        end

        it "fails without a message" do
          msg = FactoryGirl.build(:contact, message: nil)
          expect(msg).to_not be_valid
        end
      end
    end

  end
end
