class GoalsOwnController < ApplicationController
  def index
    @user = current_user
    @player = @user.player
    @goals = Goal.where(player_id: @player.id)
  end
end
