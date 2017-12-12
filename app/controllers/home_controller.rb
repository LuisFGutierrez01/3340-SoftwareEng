class HomeController < ApplicationController

  def index
    @user = current_user
    @goals = Goal.all
    if @user
      @player = Player.find(user_id: @user.id)
      @goals_own = Goal.where(player_id: @player.id)
    end
  end

end
