class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.text :description
      t.string :website, defalt: nil
      t.integer :phone_number
      t.text :address

      t.timestamps
    end
  end
end
