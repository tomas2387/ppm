class Player < ActiveRecord::Base
  attr_accessible :name
  has_many 'Game'

  validates :name,  :presence => true
end
