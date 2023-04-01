module Vgm
  module V1
    module Entities
      class Artist < Grape::Entity
        expose :name, documentation: { type: String }
      end
    end
  end
end
