class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :picture, :location, :class_cost

  has_many :subjects
  has_one :picture, serializer: PictureSerializer
  has_one :expertise, seriializer: ExpertiseSerializer
  has_one :rating, serializer: RatingSerializer

  def picture
    Picture.new object.picture
  end

  def location
    {latitude: object.lat, longitude: object.lng}
  end
end
