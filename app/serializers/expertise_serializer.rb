class ExpertiseSerializer < ActiveModel::Serializer
  attributes :value, :color , :picture


  def picture
    PictureSerializer.new Picture.new object.static_image.image
  end


end