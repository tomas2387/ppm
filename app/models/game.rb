class Game < ActiveRecord::Base
  attr_accessible :local_player, :away_player, :local, :away, :local_miss, :away_miss, :finished

  belongs_to :local_player, :class_name => "Player"
  belongs_to :away_player, :class_name => "Player"
end
