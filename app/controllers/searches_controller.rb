class SearchesController < ApplicationController
  before_action :set_stations, only: [:new, :show]
  def show
    
  end

  def new
    @trains = Search.get_trains(params[:from], params[:to])
    render :show
  end

  def create
    
  end

  private

  def set_stations
    @stations = RailwayStation.all
end
end