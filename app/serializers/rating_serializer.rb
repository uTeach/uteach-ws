class RatingSerializer < ActiveModel::Serializer
  attributes :value

  def value
    return 'F' if object.value < 0.7
    return 'E' if object.value < 1.4
    return 'D' if object.value < 2.1
    return 'C' if object.value < 2.8
    return 'B' if object.value < 3.5
    return 'A' if object.value < 4.2
    return 'A+' if object.value <= 5.0
  end
end