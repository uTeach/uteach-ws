class CreateSubjectLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_levels do |t|
      t.integer :level
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
