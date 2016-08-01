class ChangeColumnCurrentStationToTrains < ActiveRecord::Migration
  def change
    change_column :trains, :current_station_id_id, :current_station_id
  end
end
