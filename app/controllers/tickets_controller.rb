class TicketsController < ApplicationController
  def my_tickets
    @my_tickets = Ticket.where(user_id: current_user)
    @my_events = Event.where(id: @my_tickets.event_id)
  end
end
