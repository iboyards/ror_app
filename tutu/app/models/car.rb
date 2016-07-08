class Car < ActiveRecord::Base
  
  belongs_to :train

  validates :car_type, :up_places, :low_places, presence: true
    
end
