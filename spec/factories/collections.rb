FactoryBot.define do
  factory :collection do
    name { Faker::Game.title }
    slug { name.parameterize }
    url { "https://www.fake-api.com/collections/#{slug}" }
    checksum { Faker::Crypto.md5 }
  end
end
