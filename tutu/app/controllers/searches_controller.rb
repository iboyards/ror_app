class SearchesController < ApplicationController
  
  def show
  end

  def new
  end

  def create
    @trains = Search.search_trains(params[:first_station_id], params[:last_station_id])
    render :show
  end
end