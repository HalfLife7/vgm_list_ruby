class CreateAlbumLyricists < ActiveRecord::Migration[7.0]
  def change
    create_table :album_lyricists do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
