class TicketsController < ApplicationController
  def my_tickets
    @my_tickets = current_user.events
  end
end
