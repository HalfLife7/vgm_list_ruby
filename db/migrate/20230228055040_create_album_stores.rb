class CreateAlbumStores < ActiveRecord::Migration[7.0]
  def change
    create_table :album_stores do |t|
      t.references :album, null: false, foreign_key: true
      t.text :link
      t.text :name

      t.timestamps
    end
  end
end
