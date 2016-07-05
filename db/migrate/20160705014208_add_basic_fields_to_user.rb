class AddBasicFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, index: true, null: false
    add_column :users, :birthday, :datetime, index: true
    add_column :users, :gender, :integer
  end
end
