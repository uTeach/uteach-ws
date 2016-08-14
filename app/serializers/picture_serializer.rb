class PictureSerializer < ActiveModel::Serializer
  attributes :large, :medium, :thumb

  def large
    object.large_size
  end

  def medium
    object.medium_size
  end

  def thumb
    object.thumb_size
  end
end