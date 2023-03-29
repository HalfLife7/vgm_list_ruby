FactoryBot.define do
  factory :game_platform do
    association :game, factory: :game
    association :platform, factory: :platform
  end
end
