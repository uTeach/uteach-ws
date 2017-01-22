class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :levels

  def levels
    object.levels.collect { |level| level.level }
  end

end
