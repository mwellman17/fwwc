class HomesController < ApplicationController

  def index
    @production_brackets = Bracket.where(:in_pool => true).sort { |a, b|  b.score <=> a.score }
    @talent_brackets = Bracket.where(:in_pool => false).sort { |a, b|  b.score <=> a.score }
  end

end
