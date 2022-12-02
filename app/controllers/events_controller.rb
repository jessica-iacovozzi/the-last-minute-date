class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    @message = Message.new
    set_scores
    @users = @users.sort_by { |user| user.score }.reverse
  end

  def set_scores
    @users = @event.users
    # @score = @users.first.score =

    @users.each do |user|
      user.score = 0

      user.tags.each do |tag|
        if current_user.tags.include?(tag)
          user.score += 70
        end
      end

      case user.score
      when 35...100
        user.match_level = "Could be a friend"
        user.css = "result_total"
      when 100...300
        user.match_level = "Worth a shot"
        user.css = "good-score"
      when 300..450
        user.match_level = "SOULMATE ALERT"
        user.css = "top-score"
      else
        user.match_level = "Don't try, you have nothing in common"
        user.css = "no-match"
      end
    end
  end

end



# <div class="card-product-result">
#                   <% @result = 0 %>
#                   <% user.tags.each do |tag|%>
#                     <% if current_user.tags.include?(tag) %>
#                         <% @result += 35 %>
#                     <% end %>
#                   <% end %>
#                   <% score = @result %>
#                   <% result = case score %>
#                     <% when 30...100 then %>
#                       <p class="result_total">Score: <%= @result %></p>
#                       <p class="result_total">Could be a friend</p>
#                     <% when 100...200 then %>
#                       <p id="good-score">Score: <%= @result %></p>
#                       <p id="good-score">Worth a shot</p>
#                     <% when 200...350 then %>
#                       <p id="top-score"> Score: <%= @result %></p>
#                       <p id="top-score"><strong>SOULMATE ALERT</strong></p>
#                     <% else %>
#                       <p>Don't try, you have nothing in common</p>
#                   <% end %>
#                 </div>
