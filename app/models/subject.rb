class Subject < ApplicationRecord

  has_and_belongs_to_many :teachers, join_table: :subjects_teachers
  has_many :levels, class_name: 'SubjectLevel'

  validates :name, presence: true
  validates_uniqueness_of :name

end
