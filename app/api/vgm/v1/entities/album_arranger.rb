module Vgm
  module V1
    module Entities
      class AlbumArranger < Grape::Entity
        expose :arrangers do |album_arranger, _options|
          AlbumArranger.where(album_id: album_arranger.album_id, artist_id: album_arranger.artist_id)
        end
      end
    end
  end
end
