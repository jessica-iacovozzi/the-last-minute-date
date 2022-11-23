class TicketsController < ApplicationController
  def my_tickets
    @tickets = Ticket.where(user_id: current_user)
  end
end
