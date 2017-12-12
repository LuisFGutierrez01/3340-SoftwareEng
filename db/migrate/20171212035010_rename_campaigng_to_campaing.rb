class RenameCampaigngToCampaing < ActiveRecord::Migration[5.1]
  def change
    rename_column :goals, :campaigng, :synopsis
  end
end
