module Vgm
  module V1
    module Entities
      class GameAlternativeName < Grape::Entity
        expose :id, documentation: { type: 'Integer' }
        expose :game_id, documentation: { type: 'Integer' }
        expose :comment, documentation: { type: 'String' }
        expose :name, documentation: { type: 'String' }
        expose :checksum, documentation: { type: 'String' }
      end
    end
  end
end
