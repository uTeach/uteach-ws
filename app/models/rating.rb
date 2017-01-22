class Rating < ApplicationRecord
  belongs_to :teacher
  has_one :static_image, as: :element

  validates :value, numericality: { :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 5.0 }
end
