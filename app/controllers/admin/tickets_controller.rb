class Admin::TicketsController < Admin::BaseController

 before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  
  def index
    @tickets= Ticket.all
  end

  def show    
  end

  def new
    
  end

  def create    
    @ticket = current_user.tickets.new(ticket_params)    

    if @ticket.save

      redirect_to [:admin, @ticket]
    else
      render :new
    end
  end

  def edit    
  end

  def update    
    if @ticket.update(ticket_params)
      redirect_to [:admin, @ticket]
    else
      render :new
    end
  end

  def destroy    
    @ticket.destroy
    redirect_to admin_tickets_path
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end  

  def ticket_params
    params.require(:ticket).permit(:code, :full_name_user, :passport, :train_id, :user_id, :first_station_id, :last_station_id)    
  end

  
end
