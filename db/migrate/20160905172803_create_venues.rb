class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.text :description
      t.string :main_image_url
      t.string :image_2_url
      t.string :image_3_url
      t.integer :type

      t.timestamps
    end
  end
end
