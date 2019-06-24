class HomesController < ApplicationController

  def index
    @brackets = Bracket.all
  end

end
