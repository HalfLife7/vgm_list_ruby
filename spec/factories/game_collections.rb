FactoryBot.define do
  factory :game_collection do
    association :game, factory: :game
    association :collection, factory: :collection
  end
end
