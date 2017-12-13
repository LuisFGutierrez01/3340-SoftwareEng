class Goal < ApplicationRecord
  belongs_to :player


	def progress
		return (funds_current.to_f / funds_goal.to_f) *100
	end

end
