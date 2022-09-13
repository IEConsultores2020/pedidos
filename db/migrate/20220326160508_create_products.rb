class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :details
      t.float :price
      t.string :comments
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
