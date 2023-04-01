class AlbumArtist < ApplicationRecord
  belongs_to :album
  belongs_to :artist
  enum role: [:arranger, :composer, :lyricist, :performer].freeze

  validates :role, inclusion: { in: roles.keys }

  def self.for_role(role)
    where(role: role)
  end
end