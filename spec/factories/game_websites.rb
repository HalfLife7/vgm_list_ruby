FactoryBot.define do
  factory :game_website do
    association :game, factory: :game

    sequence(:category, GameWebsite.categories.keys.cycle)
    trusted { Faker::Number.between(from: 0, to: 1) }
    url { Faker::Internet.url }
    checksum { Faker::Crypto.md5 }
  end
end
