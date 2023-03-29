FactoryBot.define do
  factory :game do
    aggregated_rating_count { Faker::Number.number(digits: 2) }
    aggregated_rating { Faker::Number.decimal(l_digits: 2) }
    category { 'main_game' }
    first_release_date { Faker::Date.backward.to_time.to_i }
    name { Faker::Game.title }
    slug { name.parameterize }
    summary { Faker::Lorem.sentences }
  end
end
