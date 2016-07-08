class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :car_type
      t.integer :up_places
      t.integer :low_places
      t.integer :train_id 
      

      t.timestamps null: false
    end
  end
end
