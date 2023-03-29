class Collection < ApplicationRecord
  has_and_belongs_to_many :games,
                          join_table: 'game_collections'
end
