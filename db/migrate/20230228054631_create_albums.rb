class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.text :catalog
      t.text :category
      t.text :classification
      t.text :media_format
      t.text :name
      t.text :notes
      t.text :publisher
      t.date :release_date

      t.timestamps
    end
  end
end
