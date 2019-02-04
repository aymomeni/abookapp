class AlterUsers < ActiveRecord::Migration[5.2]

  def up
    rename_table("users", "account_holders")
    add_column("account_holders", "username", :string, :limit => 25, :after => "email")
    change_column("account_holders", "email", :string, :limit => 100)
    rename_column("account_holders", "password", "hashed_password")
    puts "*** Adding an index ***"
    add_index("account_holders", "username");
  end

  def down
    remove_index("account_holders", "username");
    rename_column("account_holders", "hashed_password", "password")
    change_column("account_holders", "email", :string, :default => '', :null => false)
    remove_column("account_holders", "username")
    rename_table("account_holders", "users")
  end
end
