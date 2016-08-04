class Subject < ApplicationRecord

  has_and_belongs_to_many :users

  validates :name, presence: true
  validates_uniqueness_of :name
end
