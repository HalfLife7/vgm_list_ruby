FactoryBot.define do
  factory :game_video do
    association :game, factory: :game

    video_id { Faker::Alphanumeric.alphanumeric(10) }
    sequence(:name, ['Trailer', 'Gameplay Video', 'Game Intro', 'Commercial'].cycle)
    checksum { Faker::Crypto.md5 }
  end
end
