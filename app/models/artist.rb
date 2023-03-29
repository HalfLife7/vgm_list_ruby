class Artist < ApplicationRecord
  has_many :album_arrangers
  has_many :album_composers
  has_many :album_lyricists
  has_many :album_performers
end
