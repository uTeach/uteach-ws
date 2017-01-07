class CreateExpertises < ActiveRecord::Migration[5.0]
  def change
    create_table :expertises do |t|
      t.integer :value
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
