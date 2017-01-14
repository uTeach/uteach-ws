class AddClassCostToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :class_cost, :float, default: 0
  end
end
