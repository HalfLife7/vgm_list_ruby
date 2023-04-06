module Vgm
  module V1
    module Entities
      class AlbumCover < Grape::Entity
        expose :full, documentation: { type: 'String' }
        expose :medium, documentation: { type: 'String' }
        expose :name, documentation: { type: 'String' }
        expose :thumb, documentation: { type: 'String' }
      end
    end
  end
end