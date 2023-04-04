class CreateAlbumTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :album_tracks do |t|
      t.integer :track_number
      t.references :album, null: false, foreign_key: true
      t.integer :disc_number
      t.text :length
      t.text :name

      t.timestamps
      add_index :album_tracks, [:track_number, :disc_number, :album_id], unique: true
    end
  end
end
