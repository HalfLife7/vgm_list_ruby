class AlbumTrack < ApplicationRecord
  belongs_to :album
  belongs_to :disc
end
