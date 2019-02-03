class CreateUsers < ActiveRecord::Migration[5.2]

  def up
    create_table :users do |t|
      # primary key is automatically added by rails to each table

      # where column definitions go
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.column "address", :string, :limit => 25
      t.column "phone_number", :integer


      t.timestamps
      #t.datetime "created_at"
      #t.datetime "updated_at"


      #other datatypes
      #binary, boolean date, datetime, decimal, float
      #integer, string

      #column options
      # :limit => size, :default => value, :null => true or failse,
      # :precision => number, :scale => number
    end
  end

  def down
    drop_table :users
  end

end
