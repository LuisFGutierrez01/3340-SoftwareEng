class HomeController < ApplicationController

  def index
    @user = current_user
    @goals = Goal.all
    @players = Player.all
    if @user != nil
      @player = @user.player
      if @user.is_player?
        @goals_own = Goal.where(player_id: @player.id)
      end
    end
  end

end
