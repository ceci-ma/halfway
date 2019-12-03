class AddUrlToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :url, :string
  end
end
