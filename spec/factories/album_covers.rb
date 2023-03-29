FactoryBot.define do
  factory :album_cover do
    association :album, factory: :album

    transient do
      image_name { Faker::Alphanumeric.alpha(number: 10) }
    end

    full { "https://fake.api/albums/#{image_name}.jpg" }
    medium { "https://medium-fake.api/albums/#{image_name}.jpg" }
    sequence(:name, ['Disc 1', 'Disc 2', 'Booklet Front', 'Booklet Back', 'Case Front', 'Case Back'].cycle)
    thumb { "https://thumb-fake.api/albums/#{image_name}.jpg" }
  end
end
