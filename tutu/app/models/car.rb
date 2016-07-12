class Car < ActiveRecord::Base
  

  belongs_to :train

  validates :number,   presence: true
  validates :number, uniqueness: { scope: :train_id }
  scope :coupe, -> { where(type: "CoupeCar") }
  scope :ordered, -> (from_head) { order(from_head ? 'number' : 'number DESC')}

before_validation :set_number
  
  private
  
  def set_number
    number = self.train.cars.maximum(:number)
    self.number = number.nil? ? 1 : number + 1
  end

end
