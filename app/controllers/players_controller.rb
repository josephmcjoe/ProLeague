class PlayersController < ApplicationController
  def create
    Player.create(player_params)
    redirect_to players_path
  end

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end
end
