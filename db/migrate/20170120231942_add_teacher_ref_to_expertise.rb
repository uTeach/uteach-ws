class AddTeacherRefToExpertise < ActiveRecord::Migration[5.0]
  def change
    add_column :expertises, :teacher_id, :int
    add_column :ratings, :teacher_id, :int
  end
end
