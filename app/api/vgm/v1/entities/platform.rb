module Vgm
  module V1
    module Entities
      class Platform < Grape::Entity
        expose :id, documentation: { type: 'Integer' } # : 6,
        expose :abbreviation, documentation: { type: 'String' } # : "PC",
        expose :alternative_name, documentation: { type: 'String' } # : "mswin",
        expose :category, documentation: { type: 'String' } # : "portable_console",
        # expose :created_at, documentation: { type: 'Integer' } #: 1297555200,
        expose :generation, documentation: { type: 'String' } # : null,
        expose :name, documentation: { type: 'String' } # : "PC (Microsoft Windows)",
        expose :slug, documentation: { type: 'String' } # : "win",
        expose :summary, documentation: { type: 'String' } # : null,
        # expose :updated_at, documentation: { type: 'Integer' } #: 1470009600,
        expose :url, documentation: { type: 'String' } # : "https://www.igdb.com/platforms/win",
        expose :checksum, documentation: { type: 'String' } # : "ec4bee36-3fd4-fa32-1780-54ca570298c2"
      end
    end
  end
end
