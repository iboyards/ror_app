class Car < ActiveRecord::Base
  
  belongs_to :train

  validates :top_places, :bottom_places, :side_top_places, :side_bottom_places, :seat_places, presence: true
    
end
