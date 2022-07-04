class Updates < ActiveRecord::Migration[6.1]
  def change
    create_table :updates do |t|
      t.string :comment
      t.integer :task_id
      t.integer :user_id
    end
  end
end
