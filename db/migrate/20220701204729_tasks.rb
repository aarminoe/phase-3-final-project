class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :type
      t.string :date
    end
  end
end
