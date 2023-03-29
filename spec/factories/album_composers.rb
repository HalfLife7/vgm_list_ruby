FactoryBot.define do
  factory :album_composer do
    association :album, factory: :album
    association :artist, factory: :artist
  end
end
