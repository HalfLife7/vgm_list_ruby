FactoryBot.define do
  factory :platform_logo do
    association :platform

    alpha_channel { Faker::Boolean.boolean }
    animated { Faker::Number.between(from: 0, to: 1) }
    height { image_sizes[:height] }
    width { image_sizes[:width] }
    image_id { Faker::Alphanumeric.alpha(number: 6) }
    url { Faker::Internet.url }
    checksum { Faker::Crypto.md5 }
  end
end
