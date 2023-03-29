FactoryBot.define do
  factory :game_alternative_name do
    association :game, factory: :game

    comment { Faker::Lorem.sentence }
    name { "#{Faker::Game.title} #{Faker::Adjective.positive} " }
    checksum { Faker::Crypto.md5 }
  end
end
