class CreateGameVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :game_videos do |t|
      t.references :game, null: false, foreign_key: true
      t.text :name
      t.integer :video_id
      t.string :checksum

      t.timestamps
    end
  end
end
