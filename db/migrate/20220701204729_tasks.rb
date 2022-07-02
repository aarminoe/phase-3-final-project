class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :comment
      t.integer :user_id
      t.integer :friend_id
    end
  end
end
