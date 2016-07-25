class SearchesController < ApplicationController
  
  def show
    
  end

  def new
    @trains = Search.get_trains(params[:from], params[:to])
    render :show
  end

  def create
    
  end
end