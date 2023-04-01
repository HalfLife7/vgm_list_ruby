class CreateAlbumArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :album_artists do |t|
      t.belongs_to :album
      t.belongs_to :artist
      t.integer :role
      t.timestamps
    end
  end
end
