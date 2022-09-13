class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :scheduler
      t.integer :quantity
      t.float :value
      t.float :total
      t.references :company, foreign_key: true
      t.references :people, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end
