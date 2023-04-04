class AlbumDisc < ApplicationRecord
  self.primary_keys = :disc_number, :album_id
  belongs_to :album
  has_many :album_tracks, :class_name => 'AlbumTrack', :foreign_key => [:disc_number, :album_id]
end
