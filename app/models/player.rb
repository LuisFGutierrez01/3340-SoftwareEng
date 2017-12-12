class Player < ApplicationRecord
  belongs_to :user
  has_many :goals

  def player_exist?(id)
    @player = Player.find(id)
    !@player.nil?
  end
end
