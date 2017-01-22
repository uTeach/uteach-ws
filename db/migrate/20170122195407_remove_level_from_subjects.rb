class RemoveLevelFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :level
  end
end
