class RailwayStation < ActiveRecord::Base

  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :railway_station_id


  validates :title, presence: true

  # scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.number').uniq }
  scope :ordered, -> { joins(:railway_stations_routes).select('railway_stations_routes.*, railway_stations.title, railway_stations.id').order('railway_stations_routes.number').uniq }

  def update_number(route, number)
    station_route = station_route(route)
    station_route.update(number: number) if station_route
  end

  def current_number(route)
    station_route(route).try(:number)
  end

  def update_arrival_time(route, arrival_time)
    station_route = station_route(route)
    station_route.update(arrival_time: arrival_time) if station_route
  end

  def arrival(route)
    station_route(route).try(:arrival_time)
  end

  def update_departure_time(route, departure_time)
    station_route = station_route(route)
    station_route.update(departure_time: departure_time) if station_route
  end

  def departure(route)
    station_route(route).try(:departure_time)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
