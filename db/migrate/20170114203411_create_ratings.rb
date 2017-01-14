class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.float :value, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
