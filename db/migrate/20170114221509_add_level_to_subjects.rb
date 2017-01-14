class AddLevelToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :level, :integer
  end
end
