FactoryBot.define do
  factory :template_code do
    language { Faker::StarWars.character }
    done false
    code_id nil
  end
end