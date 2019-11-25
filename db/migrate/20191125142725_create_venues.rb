class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :review_count
      t.float :rating
      t.string :photo
      t.string :address
      t.string :category
      t.string :phone

      t.timestamps
    end
  end
end
