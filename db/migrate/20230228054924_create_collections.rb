class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.text :name
      t.text :slug
      t.text :url
      t.string :checksum

      t.timestamps
    end
  end
end
