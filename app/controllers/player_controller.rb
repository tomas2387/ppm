class PlayerController < ApplicationController
  def index
    Player.all
  end
end
