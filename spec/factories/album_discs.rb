FactoryBot.define do
  factory :album_disc do
    association :album, factory: :album

    length { "#{Faker::Number.between(from: 1, to: 99)}:#{Faker::Number.between(from: 0, to: 59)}" }
    sequence(:name, ['Disc 1', 'Disc 2'].cycle)
  end
end
