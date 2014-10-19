require 'rails_helper'

RSpec.describe Dj, :type => :model do

  describe "creation" do
      context "valid attribrutes" do

        it "should be valid" do
          deej = FactoryGirl.build(:dj)
          expect(deej).to be_valid
        end

      end

      context "invalid attributes" do

          it "fails on single character first names" do
            deej = FactoryGirl.build(:dj, name_first: 'f')
            expect(deej).to_not be_valid
          end

          it "fails on single character first names" do
            deej = FactoryGirl.build(:dj, name_last: 'f')
            expect(deej).to_not be_valid
          end

          it "fails on invalid email addreses" do
            deej = FactoryGirl.build(:dj, email: 'f')
            expect(deej).to_not be_valid
          end

          it "fails when requested_slot is invalid" do
            deej = FactoryGirl.build(:dj, requested_slot: 'f')
            expect(deej).to_not be_valid
          end

          it "fails when genre is invalid" do
            deej = FactoryGirl.build(:dj, genres: 'f')
            expect(deej).to_not be_valid
          end

          it "fails when broadcast_license is not accepted" do
            deej = FactoryGirl.build(:dj, broadcast_license: "0")
            expect(deej).to_not be_valid
          end
      end

  end
end
