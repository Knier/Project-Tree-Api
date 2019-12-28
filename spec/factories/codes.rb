FactoryBot.define do
  factory :code do
    language { Faker::Lorem.word }
    content { Faker::Lorem.word }
  end
end