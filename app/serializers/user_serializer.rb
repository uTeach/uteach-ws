class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :birthday, :picture

  has_many :subjects
end
