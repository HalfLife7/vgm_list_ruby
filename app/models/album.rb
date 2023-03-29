class Album < ApplicationRecord
  has_and_belongs_to_many :album_arrangers
  has_many :album_composers
  has_many :album_covers
  has_many :album_discs
  has_and_belongs_to_many :games,
                          join_table: 'game_albums'
  has_many :album_lyricists
  has_many :album_performers
  has_many :album_stores
  has_many :album_tracks
end
