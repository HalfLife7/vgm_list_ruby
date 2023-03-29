FactoryBot.define do
  factory :album_game do
    association :album, factory: :album
    association :game, factory: :game
  end
end
