class SubjectLevel < ApplicationRecord
  belongs_to :subject

  enum level: [:general, :elementary, :high, :college]
  #validates_inclusion_of :level, in: Subject.levels.keys
end
