class CreateStaticImages < ActiveRecord::Migration[5.0]
  def change
    create_table :static_images do |t|
      t.string :name
      t.references :element, polymorphic: true, index: true

      t.timestamps
    end
  end
end
