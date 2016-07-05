class RailwayStation < ActiveRecord::Base

  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :railway_station_id

  validates :title, presence: true
end
