class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :author
      t.integer :publication_date
      t.integer :category_id

      t.timestamps
    end
  end
end
