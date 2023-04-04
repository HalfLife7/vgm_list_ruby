module Vgm
  module V1
    module Entities
      class AlbumTrack < Grape::Entity
        expose :track_number, documentation: { type: 'Integer' }
        expose :length, documentation: { type: 'String' }
        expose :name, documentation: { type: 'String' }
      end
    end
  end
end