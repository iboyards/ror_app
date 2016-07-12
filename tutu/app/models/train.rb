class Train < ActiveRecord::Base

  
  belongs_to :route
  has_many :tickets
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :cars

  
  def all_econom_car
    all_car = 0
    cars.each do |car|
    all_car += 1 if car.type == 'EconomyCar'
    end
    all_car
  end

  def up_places_econom_car
    all_places = 0
    cars.each do |car|
    all_places += car.top_places if car.type == 'EconomyCar'
    end
    all_places
  end

  def low_places_econom_car
    all_places = 0
    cars.each do |car|
    all_places += car.bottom_places if car.type == 'EconomyCar'
    end
    all_places
  end

  def all_coupe_car
    all_car = 0
    cars.each do |car|
    all_car += 1 if car.type == 'CoupeCar'
    end
    all_car
  end

  def up_places_coupe_car
    all_places = 0
    cars.each do |car|
    all_places += car.top_places if car.type == 'CoupeCar'
    end
    all_places
  end

  def low_places_coupe_car
    all_places = 0
    cars.each do |car|
    all_places += car.bottom_places if car.type == 'CoupeCar'
    end
    all_places
  end

  




  validates :number, presence: true
end
