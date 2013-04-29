class AddLocalToGames < ActiveRecord::Migration
  def change
    add_column :games, :local, :integer, :default => 0
    add_column :games, :local_miss, :integer, :default => 0
  end
end
