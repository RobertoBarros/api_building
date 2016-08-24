class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.boolean :published, default:false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
