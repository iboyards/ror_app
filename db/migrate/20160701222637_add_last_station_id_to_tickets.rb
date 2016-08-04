class AddLastStationIdToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :last_station
  end
end
