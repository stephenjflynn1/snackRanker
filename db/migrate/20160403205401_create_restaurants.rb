class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :building
      t.string :street
      t.string :zipcode
      t.string :boro

      t.timestamps null: false
    end
  end
end
