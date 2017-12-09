class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :campaigng
      t.datetime :duedate
      t.integer :funds_goal
      t.integer :funds_current
      t.belongs_to :player, foreign_key: true

      t.timestamps
    end
  end
end
