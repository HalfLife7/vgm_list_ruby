module Vgm
  module V1
    module Entities
      class AlbumArtist < Grape::Entity
        expose :artist, using: Entities::Artist
        expose :role, documentation: { type: String }
      end
    end
  end
end