module Vgm
  module V1
    module Entities
      class GameScreenshot < Grape::Entity
        expose :id, documentation: { type: 'Integer' }
        expose :alpha_channel, documentation: { type: 'Boolean' }
        expose :animated, documentation: { type: 'Boolean' }
        expose :height, documentation: { type: 'Integer' }
        expose :width, documentation: { type: 'Integer' }
        expose :url, documentation: { type: 'String' }
        expose :image_id, documentation: { type: 'String' }
        expose :checksum, documentation: { type: 'String' }
      end
    end
  end
end
