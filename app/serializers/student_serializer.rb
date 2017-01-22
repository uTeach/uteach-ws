class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :location

  def location
    {latitude: object.lat, longitude: object.lng}
  end
end
