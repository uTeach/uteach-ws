class Expertise < ApplicationRecord
  belongs_to :user
  has_one :static_image, as: :element
end
