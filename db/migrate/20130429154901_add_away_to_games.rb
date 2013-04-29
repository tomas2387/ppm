class AddAwayToGames < ActiveRecord::Migration
  def change
    add_column :games, :away, :integer, :default => 0
    add_column :games, :away_miss, :integer, :default => 0
  end
end
