FactoryBot.define do
  factory :album_arranger do
    association :album, factory: :album
    association :artist, factory: :artist
  end
end
