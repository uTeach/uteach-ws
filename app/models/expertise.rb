class Expertise < ApplicationRecord
  belongs_to :teacher
  has_one :static_image, as: :element
end
