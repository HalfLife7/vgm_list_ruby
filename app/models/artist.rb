class Artist < ApplicationRecord
  has_many :album_artists
  has_many :albums, through: :album_artists
  has_many :album_lyricists
  has_many :album_performers
end
