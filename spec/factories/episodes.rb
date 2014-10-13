# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :episode do
    title Faker::App.name
    artist Faker::Name.name
    url Faker::Internet.url
    description Faker::Lorem.paragraph(1)
  end
end
