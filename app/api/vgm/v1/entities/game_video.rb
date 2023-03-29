module Vgm
  module V1
    module Entities
      class GameVideo < Grape::Entity
        expose :video_id, documentation: { type: 'Integer' }
        expose :name, documentation: { type: 'String' }
        expose :checksum, documentation: { type: 'String' }
      end
    end
  end
end
