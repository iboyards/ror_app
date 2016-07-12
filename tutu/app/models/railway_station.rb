class RailwayStation < ActiveRecord::Base

  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :railway_station_id


  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.position').uniq }

  def update_number(route, position)
    route_railway_station = RailwayStationsRoute.where(route: route, railway_station: self).first
    route_railway_station.update(position: position)
  end

  def current_number(route)
    route_railway_station = RailwayStationsRoute.where(route: route, railway_station: self).first
    route_railway_station.position
  end
end
