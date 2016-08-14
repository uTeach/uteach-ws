class AddFacebookIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :facebook_id, :string, index: true, default: nil
  end
end
