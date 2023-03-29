FactoryBot.define do
  factory :game_artwork do
    association :game, factory: :game

    transient do
      sequence(:image_sizes,
               [
                 { width: 720, height: 480 },
                 { width: 720, height: 576 },
                 { width: 1280, height: 720 },
                 { width: 1920, height: 1080 }
               ].cycle)
    end

    alpha_channel { Faker::Number.between(from: 0, to: 1) }
    animated { Faker::Number.between(from: 0, to: 1) }
    height { image_sizes[:height] }
    width { image_sizes[:width] }
    image_id { Faker::Alphanumeric.alpha(number: 6) }
    url { Faker::Internet.url }
    checksum { Faker::Alphanumeric.alpha(number: 6) }
  end
end
