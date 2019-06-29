class Api::V1::BracketsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  protect_from_forgery unless: -> { request.format.json? }

  def index
    cdh_brackets = Bracket.where(:in_pool => true).sort_by { |a| [-a.score, a.last_name] }
    production_brackets = Bracket.where(:in_pool => false).sort_by { |a| [-a.score, a.last_name] }
    render json: {
      cdh_brackets: ActiveModel::Serializer::CollectionSerializer.new(cdh_brackets, serializer: CdhBracketSerializer),
      production_brackets: ActiveModel::Serializer::CollectionSerializer.new(production_brackets, serializer: ProductionBracketSerializer)
    }
  end

  def show

  end

  def create
    response = JSON.parse(request.body.read)
    bracket = response["bracket"]
    newBracket = Bracket.new
    newBracket.name = response["name"]
    newBracket.pick_1 = bracket["pick_1"]
    newBracket.pick_2 = bracket["pick_2"]
    newBracket.pick_3 = bracket["pick_3"]
    newBracket.pick_4 = bracket["pick_4"]
    newBracket.pick_5 = bracket["pick_5"]
    newBracket.pick_6 = bracket["pick_6"]
    newBracket.pick_7 = bracket["pick_7"]
    newBracket.pick_8 = bracket["pick_8"]
    newBracket.pick_9 = bracket["pick_9"]
    newBracket.pick_10 = bracket["pick_10"]
    newBracket.pick_11 = bracket["pick_11"]
    newBracket.pick_12 = bracket["pick_12"]
    newBracket.pick_13 = bracket["pick_13"]
    newBracket.pick_14 = bracket["pick_14"]
    newBracket.pick_15 = bracket["pick_15"]
    newBracket.pick_16 = bracket["pick_16"]
    newBracket.pick_q1 = bracket["pick_q1"]
    newBracket.pick_q2 = bracket["pick_q2"]
    newBracket.pick_q3 = bracket["pick_q3"]
    newBracket.pick_q4 = bracket["pick_q4"]
    newBracket.pick_q5 = bracket["pick_q5"]
    newBracket.pick_q6 = bracket["pick_q6"]
    newBracket.pick_q7 = bracket["pick_q7"]
    newBracket.pick_q8 = bracket["pick_q8"]
    newBracket.pick_s1 = bracket["pick_s1"]
    newBracket.pick_s2 = bracket["pick_s2"]
    newBracket.pick_s3 = bracket["pick_s3"]
    newBracket.pick_s4 = bracket["pick_s4"]
    newBracket.pick_f1 = bracket["pick_f1"]
    newBracket.pick_f2 = bracket["pick_f2"]
    newBracket.pick_winner = bracket["winner"]
    newBracket.pick_third = bracket["third"]

    if newBracket.save
      render json: { name: Bracket.last.name, winner: Bracket.last.pick_winner }
    else
      render json: { error: newBracket.errors.full_messages.join(', ') }
    end
  end

end
