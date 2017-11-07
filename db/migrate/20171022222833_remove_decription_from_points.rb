class RemoveDecriptionFromPoints < ActiveRecord::Migration
  def change
    remove_column :points, :decription, :text
  end
end
