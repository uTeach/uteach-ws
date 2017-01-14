class RemoveColorFromExpertise < ActiveRecord::Migration[5.0]
  def change
    remove_column :expertises, :color
  end
end
