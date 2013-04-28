class Game < ActiveRecord::Base
  belongs_to :local_player, :class_name => "Player"
  belongs_to :away_player, :class_name => "Player"
end
