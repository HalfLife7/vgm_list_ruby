FactoryBot.define do
  factory :album_artist do
    association :album
    association :artist

    sequence(:role, ['arranger', 'composer', 'lyricist', 'performer'].cycle )
  end
end