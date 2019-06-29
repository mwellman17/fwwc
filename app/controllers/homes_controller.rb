class HomesController < ApplicationController

  def index
    @production_brackets = Bracket.where(:in_pool => true).sort_by { |a| [-a.score, a.last_name] }
    @talent_brackets = Bracket.where(:in_pool => false).sort_by { |a| [-a.score, a.last_name] }
  end

end
