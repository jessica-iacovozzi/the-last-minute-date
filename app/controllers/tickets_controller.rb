class TicketsController < ApplicationController
  def my_tickets
    @my_tickets = current_user.events.order(date: :desc)
  end

  def buy_ticket
    @ticket = Ticket.new()
    @event = Event.find(params[:id])
    @ticket.user = current_user
    @ticket.event = @event

    if @ticket.save
      redirect_to my_tickets_path
    else
      render :new
    end
  end

end
