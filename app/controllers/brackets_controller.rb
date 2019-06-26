class BracketsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def show
    @bracket = Bracket.find(params[:id])
  end

end
