class AddScoresToGame < ActiveRecord::Migration
  def change
    add_column :games, :score1, :int
    add_column :games, :score2, :int
  end
end
