FactoryBot.define do
  factory :album_lyricist do
    association :album, factory: :album
    association :artist, factory: :artist
  end
end
