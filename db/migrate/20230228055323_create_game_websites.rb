class CreateGameWebsites < ActiveRecord::Migration[7.0]
  def change
    create_table :game_websites do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :category
      t.boolean :trusted
      t.text :url
      t.string :checksum

      t.timestamps
    end
  end
end
