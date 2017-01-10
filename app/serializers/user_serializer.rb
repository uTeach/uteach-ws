class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :picture, :latitude, :longitude

  has_many :subjects
  has_one :picture, serializer: PictureSerializer
  has_one :expertise, seriializer: ExpertiseSerializer

  def picture
    Picture.new object.picture
  end

  def latitude
    object.lat
  end

  def longitude
    object.lng
  end
end
