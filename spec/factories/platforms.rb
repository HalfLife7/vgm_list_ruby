FactoryBot.define do
  factory :platform do
    abbreviation { name }
    alternative_name { name }
    sequence(:category, Platform.categories.keys.cycle)
    generation { Faker::Number.number(digits: 1) }
    name { Faker::Computer.platform }
    slug { name.parameterize }
    summary { Faker::Lorem.sentence }
    url { Faker::Internet.url }
    checksum { Faker::Crypto.md5 }
  end
end
