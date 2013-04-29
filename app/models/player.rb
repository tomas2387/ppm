class Player < ActiveRecord::Base
  attr_accessible :name
  has_many :local_games, :class_name => 'Game', :foreign_key => 'local_player_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'away_player_id'

  validates :name,  :presence => true
end
