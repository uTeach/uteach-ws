class StaticImage < ApplicationRecord
  has_attached_file :image, styles: { large: "800x800#", medium: "400x400#", thumb: "200x200#"}
  validates_attachment :image, content_type: {content_type: ["image/jpeg", "image/png"]}, allow_nil: true

  belongs_to :element, polymorphic: true
end
