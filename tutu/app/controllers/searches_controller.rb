class SearchesController < ApplicationController
  
  def show
  end

  def new
  end

  def create
    @trains = Search.search_trains(params[:starting_station_id], params[:ending_station_id])
    render :show
  end
end