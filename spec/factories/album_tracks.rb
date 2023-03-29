FactoryBot.define do
  factory :album_track do
    association :disc, factory: :disc
    association :album, factory: :album

    length { "#{Faker::Number.between(from: 0, to: 9)}:#{Faker::Number.between(from: 0, to: 59)}" }
    name { Faker::Lorem.sentence(word_count: 1, random_words_to_add: 3) }
  end
end
