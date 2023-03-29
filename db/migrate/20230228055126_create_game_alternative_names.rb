class CreateGameAlternativeNames < ActiveRecord::Migration[7.0]
  def change
    create_table :game_alternative_names do |t|
      t.references :game, null: false, foreign_key: true
      t.text :comment
      t.text :name
      t.string :checksum

      t.timestamps
    end
  end
end
