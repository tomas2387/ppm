class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :local_player_id, :null => false
      t.integer :away_player_id, :null => false
      t.timestamps
    end
  end
end
