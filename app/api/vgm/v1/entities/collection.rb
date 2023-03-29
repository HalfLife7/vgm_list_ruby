module Vgm
  module V1
    module Entities
      class Collection < Grape::Entity
        expose :id, documentation: { type: 'Integer' }
        expose :name, documentation: { type: 'String' }
        expose :slug, documentation: { type: 'String' }
        expose :url, documentation: { type: 'String' }
        expose :checksum, documentation: { type: 'String' }
      end
    end
  end
end
