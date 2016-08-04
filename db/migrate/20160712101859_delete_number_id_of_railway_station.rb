class DeleteNumberIdOfRailwayStation < ActiveRecord::Migration
  def change
    remove_column :railway_stations, :number
  end
end
