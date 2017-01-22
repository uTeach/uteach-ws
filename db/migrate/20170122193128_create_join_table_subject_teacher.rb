class CreateJoinTableSubjectTeacher < ActiveRecord::Migration[5.0]
  def change
    create_join_table :subjects, :teachers do |t|
      t.index [:subject_id, :teacher_id]
      t.index [:teacher_id, :subject_id]
    end
  end
end
