class CreateAlbumDiscs < ActiveRecord::Migration[7.0]
  def change
    create_table :album_discs do |t|
      t.integer :disc_number
      t.references :album, null: false, foreign_key: true
      t.text :length
      t.text :name

      t.timestamps
    end

    add_index :album_discs, [:disc_number, :album_id], unique: true
  end
end
