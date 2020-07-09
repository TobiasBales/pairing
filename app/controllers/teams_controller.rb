# typed: false

# frozen_string_literal: true

class TeamsController < InheritedResources::Base
  before_action :authenticate_user!

  def index
    @teams = current_user.teams.includes(memberships: :user)
  end

  def show
    @team = current_user.teams.includes(memberships: :user).find(params[:id])
  end

  def new
    @team = current_user.teams.build
    @team.memberships.build(user_id: current_user.id)
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
    @team.memberships.build
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
    params.require(:team).permit(:name, memberships_attributes: [:id, :user_id, :_destroy])
  end
end
