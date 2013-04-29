class PlayerController < ApplicationController
  def index
    @players = Player.all
    @games = Game.all
    respond_to do |format|
      format.html
    end
  end

  def new
  end

  def create
    player = Player.new(:name => params[:name])
    player.save
    redirect_to('/')
  end

  def show
    @player = Player.find(params[:id])
  end
end
