class Subject < ApplicationRecord

  # has_and_belongs_to_many :teachers, association_foreign_key: :teacher_id, join_table: :subjects_trachers
  has_and_belongs_to_many :teachers, join_table: :subjects_teachers

  enum level: [:general, :elementary, :high, :college]

  validates :name, presence: true
  validates_uniqueness_of :name
  validates_inclusion_of :level, in: Subject.levels.keys
end
