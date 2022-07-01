class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :comment
      t.integer :user_id
    end
  end
end
