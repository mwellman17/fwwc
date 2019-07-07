class HomesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    $scorecard = Scorecard.first
    @production_brackets = Bracket.where(:in_pool => true).sort_by { |a| [-a.score, a.last_name] }
    @talent_brackets = Bracket.where(:in_pool => false).sort_by { |a| [-a.talent_score, a.last_name] }
  end

  def admin
    @scorecard = Scorecard.first
  end

end
