class BracketsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def show
    @bracket = Bracket.find(params[:id])
    @eliminated_teams = []
    Team.where(:eliminated => true).each do |team|
      @eliminated_teams << team.name
    end
    @scorecard = Scorecard.first
  end

end
