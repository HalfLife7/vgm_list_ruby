module Vgm
  module V1
    module Entities
      class AlbumDisc < Grape::Entity
        expose :disc_number, documentation: { type: 'Integer' }
        expose :length, documentation: { type: 'Integer' }
        expose :name, documentation: { type: 'String' }
        expose :album_tracks, using: Entities::AlbumTrack
      end
    end
  end
end