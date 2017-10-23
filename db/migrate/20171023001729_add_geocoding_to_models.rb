class AddGeocodingToModels < ActiveRecord::Migration
  def change
    add_column :points, :latitude, :float
    add_column :points, :longitude, :float
    add_column :points, :address, :string
    
    add_column :restaurants, :latitude, :float
    add_column :restaurants, :longitude, :float
    add_column :restaurants, :address, :string
  end
end
