class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :picture
end
