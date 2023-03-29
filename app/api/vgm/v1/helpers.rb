module Vgm
  module V1
    module Helpers
      extend Grape::API::Helpers

      # Entity helpers
      Grape::Entity.format_with :iso8601 do |date|
        date&.iso8601
      end

      Grape::Entity.format_with :unix_to_iso8601 do |date|
        Time.at(date).iso8601 if date
      end

      # add helper to convert to url for game_artwork
    end
  end
end
