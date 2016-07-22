class RailwayStation < ActiveRecord::Base

  
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :railway_station_id


  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.number').uniq }

  def update_number(route, number)
    station_route = station_route(route)
    station_route.update(number: number) if station_route
  end

  def current_number(route)
    station_route(route).try(:number)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
