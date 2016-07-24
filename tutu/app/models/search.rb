class Search
  def self.search_trains(first_station, last_station)
    if first_station != last_station
      routes = Route.joins(:railway_stations).where(railway_stations: { id: first_station }) &
               Route.joins(:railway_stations).where(railway_stations: { id: last_station })
      Train.joins(:route).where(route: routes)
    end
  end
end