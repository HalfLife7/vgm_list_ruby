module Vgm
  module V1
    module Entities
      class AlbumStore < Grape::Entity
        expose :link, documentation: { type: 'String' }
        expose :name, documentation: { type: 'String' }
      end
    end
  end
end