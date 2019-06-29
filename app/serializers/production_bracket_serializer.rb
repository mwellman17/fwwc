class ProductionBracketSerializer < ActiveModel::Serializer
  attributes :id, :name, :talent_rank, :talent_score, :talent_possible_points, :flag
end
