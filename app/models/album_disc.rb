class AlbumDisc < ApplicationRecord
  belongs_to :album
  has_many :album_tracks
end
