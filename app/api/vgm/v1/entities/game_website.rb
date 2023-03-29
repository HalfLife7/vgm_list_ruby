module Vgm
  module V1
    module Entities
      class GameWebsite < Grape::Entity
        expose :category, documentation: { type: 'String' }
        expose :trusted, documentation: { type: 'Boolean' }
        expose :url, documentation: { type: 'String' }
        expose :checksum, documentation: { type: 'String' }
      end
    end
  end
end
