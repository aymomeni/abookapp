class DoNothingYet < ActiveRecord::Migration[5.2]

  def up
    # any change in the db
  end

  def down
    # opposite of up method
    # if in the up method it's create table
    # down method would be drop table etc
  end

end
