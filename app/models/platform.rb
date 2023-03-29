class Platform < ApplicationRecord
  has_many :platform_logos
  has_and_belongs_to_many :games,
                          join_table: 'game_platforms'

  enum category: %i[
    console
    arcade
    platform
    operating_system
    portable_console
    computer
  ].freeze

  validates :category, inclusion: { in: categories.keys }
end
