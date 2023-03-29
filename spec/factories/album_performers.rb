FactoryBot.define do
  factory :album_performer do
    association :album, factory: :album
    association :artist, factory: :artist
  end
end
