class CreatePlatformLogos < ActiveRecord::Migration[7.0]
  def change
    create_table :platform_logos do |t|
      t.references :platform, null: false, foreign_key: true
      t.boolean :alpha_channel
      t.boolean :animated
      t.integer :height
      t.integer :image_id
      t.text :url
      t.integer :width
      t.string :checksum

      t.timestamps
    end
  end
end
