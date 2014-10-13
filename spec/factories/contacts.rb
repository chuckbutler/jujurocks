# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    name Faker::Name.name
    email Faker::Internet.free_email
    message Faker::Lorem.paragraphs(2)

  end
end
