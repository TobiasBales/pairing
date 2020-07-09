# typed: false

# frozen_string_literal: true

class TeamsController < InheritedResources::Base
  before_action :authenticate_user!

  def index
    @teams = current_user.teams.includes(team_members: :user)
  end

  def show
    @team = current_user.teams.includes(team_members: :user).find(params[:id])
  end

  def new
    @team = current_user.teams.build
    @team.team_members.build(user_id: current_user.id)
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to team_path(@team), flash: { notice: "Saved #{@team.name}" }
    else
      render 'new'
    end
  end

  def edit
    @team = current_user.teams.find(params[:id])
    @team.team_members.build
  end

  def update
    @team = current_user.teams.find(params[:id])
    if @team.update(team_params)
      redirect_to team_path(@team), flash: { notice: "Saved #{@team.name}" }
    else
      render 'edit'
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, team_members_attributes: %i[id user_id _destroy])
  end
end
