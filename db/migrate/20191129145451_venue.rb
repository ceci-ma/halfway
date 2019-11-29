class Venue < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :commute_one, :integer
    add_column :venues, :commute_two, :integer
  end
end
