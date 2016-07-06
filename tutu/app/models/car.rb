class Car < ActiveRecord::Base
  
  belongs_to :train
  
  validates :car_type, presence: true
  validates :up_places, presence: true
  validates :low_places, presence: true
  
end
