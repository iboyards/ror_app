class CarsController < ApplicationController
  before_action :set_train, only: [:new, :create]
  
  def index
    
  end

  def show  
    @car = Car.find(params[:id])  
  end

  def new    
    @car = Car.new
  end

  def create
    @car = @train.cars.new(car_params)

    if @car.save
      redirect_to @train
    else
      render :new
    end
  end

  def edit    
  end

  def update    
    
  end

  def destroy    
   
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def car_params
    params.require(:car).permit(:number, :top_places, :bottom_places, :side_top_places, 
      :side_bottom_places, :seat_places, :train_id, :type)    
  end

end