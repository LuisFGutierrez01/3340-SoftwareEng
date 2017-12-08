class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.float :goalFunds
      t.float :currentFunds
      t.date :dateCreated
      t.date :dateDue
      t.integer :createdBy
      t.string :title
      t.string :info

      t.timestamps
    end
  end
end
