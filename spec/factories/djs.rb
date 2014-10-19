# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dj do
    name_first Faker::Name.first_name
    name_last Faker::Name.last_name
    email Faker::Internet.free_email
    timezone "Eastern Time (US & Canada)"
    live false
    genres "talk"
    frequency "weekly"
    requested_slot "after"
    broadcast_license "1"
  end
end
