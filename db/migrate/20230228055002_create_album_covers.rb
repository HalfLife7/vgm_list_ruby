class CreateAlbumCovers < ActiveRecord::Migration[7.0]
  def change
    create_table :album_covers do |t|
      t.references :album, null: false, foreign_key: true
      t.text :full
      t.text :medium
      t.text :name
      t.text :thumb

      t.timestamps
    end
  end
end
