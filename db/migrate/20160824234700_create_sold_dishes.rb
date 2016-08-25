class CreateSoldDishes < ActiveRecord::Migration
  def change
    create_table :sold_dishes do |t|
      t.integer :price_sold
      t.integer :recipe_id
      t.integer :number_sold

      t.timestamps
    end
  end
end
