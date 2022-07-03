class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :category
      t.string :date
      t.integer :user_id
    end
  end
end
