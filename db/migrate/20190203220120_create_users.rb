class CreateUsers < ActiveRecord::Migration[5.2]

  def up
    create_table :users do |t|
      # where column definitions go
      t.column "first_name", :string
      t.string "last_name"
      t.string "email", :default =>
      t.column "address", :string
      t.column "phone_number", :integer

      #other datatypes
      #binary, boolean date, datetime, decimal, float
      #integer, string

      #column options
      # :limit => size, :default => value, :null => true or failse,
      # :precision => number, :scale => number

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
