class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.string :img-url
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
