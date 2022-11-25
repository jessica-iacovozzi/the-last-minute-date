class UsersController < ApplicationController
  def my_profile
    @my_profile = current_user
    # @my_tickets = Ticket.where(user_id: current_user)
    # @my_events = Event.includes(:tickets).where(tickets: { event_id: :id })
    @my_events = current_user.events
  end
end
