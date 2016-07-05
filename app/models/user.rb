class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :picture, styles: { medium: "400x400#", thumb: "200x200#"}
  validates_attachment :picture, content_type: {content_type: ["image/jpeg", "image/png"]}, allow_nil: true

  enum gender: {female: 0, male: 1}

  validates :name, :email, presence: true
  validates :gender, inclusion: {in: User.genders.keys}, allow_nil: true

end
