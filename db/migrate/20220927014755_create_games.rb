class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :aggregated_rating_count
      t.float :aggregated_rating
      t.integer :category
      t.integer :first_release_date
      t.text :name
      t.text :slug
      t.text :summary

      t.timestamps
    end
  end
end
