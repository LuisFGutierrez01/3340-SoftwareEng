class GoalsOwnController < ApplicationController

  def index
    @user = current_user
    @player = @user.player
    if @player != nil
      @goals = Goal.where(player_id: @player.id)
    else
      @goals = nil
    end
  end


  # GET /goal_own/missing
  def missing
  end


end
