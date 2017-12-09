class Player < ApplicationRecord
  belongs_to :user

  def player_exist?(id)
    @player = Player.find(id)
    !@player.nil?
    end
end
