FactoryBot.define do
  factory :album do
    catalog { "#{Faker::Lorem.characters(number: 4).capitalize}-#{Faker::Number.number(digits: 4)}" }
    category { 'Game' }
    sequence(:classification, ['Original Soundtrack', 'Arrangement', 'Remix', 'Vocal'].cycle)
    sequence(:media_format, ['CD', '2 CD', '3 CD', '4 CD'].cycle)
    name { Faker::Lorem.sentence(word_count: 1, random_words_to_add: 3) }
    notes { Faker::Lorem.paragraph(sentence_count: 1, random_sentences_to_add: 2) }
    publisher { Faker::Company.name }
    release_date { Faker::Date.between(from: 20.years.ago.to_date, to: 2.days.ago.to_date) }
  end
end
