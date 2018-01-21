class CreateUsers < ActiveRecord::Migration[5.1]
  
  def up
    create_table :users do |t|
      t.string "first_name", :limit => 25 
      t.string "last_name", :limit => 50 
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40

      # t.datetime "created_at"
      # t.datetime "updated_at"
      t.timestamps #timestamps is doing the above 2 lines of code
    end
  end

  def down
    drop_table :users
  end

end
