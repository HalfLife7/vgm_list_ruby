module Vgm
  module V1
    module Entities
      class Album < Grape::Entity
        expose :id, documentation: { type: 'Integer' } # 43852,
        expose :catalog, documentation: { type: 'String' } # "SE-3078-2",
        expose :category, documentation: { type: 'String' } # "Game",
        expose :classification, documentation: { type: 'String' } # "Original Soundtrack",
        expose :media_format, documentation: { type: 'String' } # "CD",
        expose :name, documentation: { type: 'String' } # "Thief - Original Soundtrack - Director's Cut",
        expose :notes, documentation: { type: 'String' } # "All music written, produced, performed, mixed and arranged by Luc St-Pierre\nAdditional vocals by Alina Tringova\nAdditional percussions by Krystina Marcoux\nAdditional guitars by Simon Godin\nAdditional orchestration by Hugo Mayrand and Benoit Groulx\nScore recorded in Prague by the FILMharmonic Orchestra Prague\nOrchestral score mixed by Benjamin Gendron-Smith\nOrchestral score produced by Petr Pycha\nConducted by Adam Klemens\nRecording sound engineer Jan Holzner\nMastered at Le Lab Mastering by Marc-Olivier Bouchard",
        expose :publisher, documentation: { type: 'String' } # "Sumthing Else Music Works",
        expose :release_date, documentation: { type: 'Date' } # "2014-02-25",
        expose :updated_at, documentation: { type: 'String' } # 1600883160
      end
    end
  end
end
