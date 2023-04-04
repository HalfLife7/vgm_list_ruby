class Album < ApplicationRecord
  has_many :album_artists
  has_many :artists, through: :album_artists
  has_many :album_covers
  has_many :album_discs
  has_and_belongs_to_many :games,
                          join_table: 'game_albums'
  has_many :album_stores
end
