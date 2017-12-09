class ProfileController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @player = current_user.player
  end

end
