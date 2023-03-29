class GameAlbum < ApplicationRecord
  belongs_to :album
  belongs_to :game
end
