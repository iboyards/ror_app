class TicketsController < ApplicationController

 before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_stations, only: [:new]
 
  def index
    @tickets= Ticket.all
  end

  def show    
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def edit    
  end

  def update    
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :new
    end
  end

  def destroy    
    @ticket.destroy
    redirect_to tickets_path
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def set_stations
    @from = RailwayStation.find(params[:ticket][:first_station_id])
    @to = RailwayStation.find(params[:ticket][:last_station_id])
  end

  def ticket_params
    params.require(:ticket).permit(:code, :full_name_user, :passport, :train_id, :user_id, :first_station_id, :last_station_id)    
  end
end
