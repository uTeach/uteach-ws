class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_mappable

  enum gender: {female: 0, male: 1}

  validates :name, :email, presence: true
  validates_uniqueness_of :email
  validates :gender, inclusion: {in: User.genders.keys}, allow_nil: true
end
