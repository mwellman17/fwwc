class CdhBracketSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank, :score, :possible_points, :flag
end
