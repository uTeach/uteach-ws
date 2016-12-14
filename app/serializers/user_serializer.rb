class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :picture

  has_many :subjects
  has_one :picture, serializer: PictureSerializer

  def picture
    Picture.new object.picture
  end
end
