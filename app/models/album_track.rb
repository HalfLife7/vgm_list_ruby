class AlbumTrack < ApplicationRecord
  self.primary_keys = :track_number, :disc_number, :album_id
  belongs_to :album_disc, :foreign_key => [:disc_number, :album_id]
  delegate :album, to: :disc
end
