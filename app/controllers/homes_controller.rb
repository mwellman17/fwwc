class HomesController < ApplicationController

  def index
    @production_brackets = Bracket.where(:in_pool => true).sort_by { |a| [!a.score, a.name] }
    @talent_brackets = Bracket.where(:in_pool => false).sort_by { |a| [!a.score, a.name] }
  end

end
