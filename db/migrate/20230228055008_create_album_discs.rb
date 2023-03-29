class CreateAlbumDiscs < ActiveRecord::Migration[7.0]
  def change
    create_table :album_discs do |t|
      t.references :album, null: false, foreign_key: true
      t.text :length
      t.text :name

      t.timestamps
    end
  end
end
