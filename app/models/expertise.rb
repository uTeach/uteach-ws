class Expertise < ApplicationRecord
  before_create :set_color
  belongs_to :user

  @@colors_map = {0 => 'white', 10 => 'yellow', 20 => 'red', 40 => 'green', 80 => 'blue', 150 => 'purple'}

  private

  def set_color
    self.color = @@colors_map[value]
  end
end
