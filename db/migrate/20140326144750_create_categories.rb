class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :recipe_id
      t.integer :cookbook_id

      t.timestamps
    end
  end
end
