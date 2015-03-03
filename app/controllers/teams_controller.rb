class TeamsController < ApplicationController
  def create
    Team.create(team_params)
    redirect_to teams_path
  end

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
