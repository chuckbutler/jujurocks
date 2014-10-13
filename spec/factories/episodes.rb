# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :episode do
    title Faker::App.name
    artist Faker::Name.name
    url Faker::Internet.url
    description Faker::Lorem.paragraph(1)
    after(:create) do |epi|
      epi.tags << FactoryGirl.build(:tag)
    end
  end
end
