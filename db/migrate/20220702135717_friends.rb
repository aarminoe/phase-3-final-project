class Friends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :username
      t.integer :user_id
  end
end
