class GameController < ApplicationController
  def create
    local = Player.find(params[:local_player][:id])
    away = Player.find(params[:away_player][:id])
    game = Game.new(:local_player => local, :away_player => away)
    game.save
    redirect_to(game)
  end

  def new
    @players = Player.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def addHit
    game = Game.find(params[:id])
    if game.local_player.id == params[:idPlayer].to_i then
      game.local = game.local + 1 
    elsif game.away_player.id == params[:idPlayer].to_i
      game.away = game.away + 1
    else
      raise Exception.new('Error on player id. Is not from this game! '+params[:idPlayer])
    end
    game.save
    redirect_to(game)
  end

  def addMiss
    game = Game.find(params[:id])
    if game.local_player.id == params[:idPlayer].to_i then
      game.away = game.away + 1
    elsif game.away_player.id == params[:idPlayer].to_i
      game.local = game.local + 1
    else
      raise Exception.new('Error on player id. Is not from this game! '+params[:idPlayer])
    end
    game.save
    redirect_to(game)
  end
end
