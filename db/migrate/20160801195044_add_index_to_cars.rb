class AddIndexToCars < ActiveRecord::Migration
  def change
    add_index :cars, [:id, :type]
    add_index :cars, :train_id
  end
end
