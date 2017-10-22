class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :name
      t.string :location
      t.text :decription

      t.timestamps null: false
    end
  end
end
