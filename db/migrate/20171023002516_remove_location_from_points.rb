class RemoveLocationFromPoints < ActiveRecord::Migration
  def change
    remove_column :points, :location, :string
  end
end
