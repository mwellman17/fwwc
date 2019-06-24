class BracketsController < ApplicationController
  before_action :authenticate_user!, except: []

  def index
    @brackets = Bracket.all.order(:score)
  end

end
