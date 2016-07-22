class RailwayStation < ActiveRecord::Base

  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :railway_station_id


  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.number').uniq }

  def update_number(route, number)
    railway_station_route = RailwayStationsRoute.where(route: route, railway_station: self).first
    railway_station_route.update(number: number)
  end

  def current_number(route)
    railway_station_route = RailwayStationsRoute.where(route: route, railway_station: self).first
    railway_station_route.number
  end
end
