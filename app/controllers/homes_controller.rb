class HomesController < ApplicationController

  def index
    @brackets = Bracket.all.sort { |a, b|  b.score <=> a.score }
  end

end
