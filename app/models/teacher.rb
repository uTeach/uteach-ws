class Teacher < User
  before_create :set_expertise, :set_rating

  has_attached_file :picture, styles: { large: "800x800#", medium: "400x400#", thumb: "200x200#"}
  validates_attachment :picture, content_type: {content_type: ["image/jpeg", "image/png"]}, allow_nil: true

  has_and_belongs_to_many :subjects
  has_one :expertise
  has_one :rating

  validates_numericality_of :class_cost, :greater_than_or_equal_to => 0

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

  def set_rating
    self.rating = Rating.create value: 0.0
  end
end
