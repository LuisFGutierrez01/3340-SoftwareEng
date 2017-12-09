class User < ApplicationRecord
  has_one :player
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def admin?
  	return role_id == 99
  end

  def is_player?
    return !player.nil?
  end

  def user_player
    return @user.player
  end

end


