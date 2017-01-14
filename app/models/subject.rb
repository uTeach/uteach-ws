class Subject < ApplicationRecord

  has_and_belongs_to_many :users

  enum level: [:general, :elementary, :high, :college]

  validates :name, presence: true
  validates_uniqueness_of :name
  validates_inclusion_of :level, in: Subject.levels.keys
end
