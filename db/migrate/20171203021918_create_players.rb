class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.belongs_to :user, foreign_key: true
      t.string :player_name
      t.text :description
      t.string :youtube_url

      t.timestamps
    end
  end
end
