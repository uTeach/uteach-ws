class User < ApplicationRecord
  before_create :set_expertise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_mappable

  has_attached_file :picture, styles: { large: "800x800#", medium: "400x400#", thumb: "200x200#"}
  validates_attachment :picture, content_type: {content_type: ["image/jpeg", "image/png"]}, allow_nil: true

  has_and_belongs_to_many :subjects
  has_one :expertise

  enum gender: {female: 0, male: 1}

  validates :name, :email, presence: true
  validates_uniqueness_of :email
  validates :gender, inclusion: {in: User.genders.keys}, allow_nil: true

  def add_subject subject
    subjects << subject unless subjects.include? subject
  end

  def remove_subject subject
    subjects.delete subject
  end

  def add_picture url
    self.picture = open url, allow_redirections: :safe
  end

  def set_expertise
    self.expertise = Expertise.create! value: 0
  end
end
