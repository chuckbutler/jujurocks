# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :podcast do
    title Faker::App.name
    url Faker::Internet.url
    description Faker::Lorem.paragraph(2)
  end
end
