class GameWebsite < ApplicationRecord
  belongs_to :game

  enum category: %i[
    official
    wikia
    wikipedia
    facebook
    twitter
    twitch
    instagram
    youtube
    iphone
    ipad
    android
    steam
    reddit
    itch
    epicgames
    gog
    discord
  ].freeze

  validates :category, inclusion: { in: categories.keys }
end
