class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :category_id
      t.integer :user_id
      t.integer :days_on_menu

      t.timestamps
    end
  end
end
