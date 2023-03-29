class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.text :abbreviation
      t.text :alternative_name
      t.integer :category
      t.text :generation
      t.text :name
      t.text :slug
      t.text :summary
      t.text :url
      t.string :checksum

      t.timestamps
    end
  end
end
