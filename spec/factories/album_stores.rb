FactoryBot.define do
  factory :album_store do
    association :album, factory: :album

    transient do
      domain_word { Faker::Internet.domain_word }
      human_readable { domain_word.capitalize }
    end

    link { "http://www.#{domain_word}.com/#{Faker::Alphanumeric.alpha}" }
    name { human_readable }
  end
end
