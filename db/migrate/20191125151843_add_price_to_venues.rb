class AddPriceToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :price, :string
  end
end
