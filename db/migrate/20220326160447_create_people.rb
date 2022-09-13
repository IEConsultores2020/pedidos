class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name
      t.text :address
      t.text :phone
      t.text :email
      t.text :whatsapp
      t.text :works
      t.text :country
      t.text :state
      t.text :city
      t.string :comments

      t.timestamps
    end
  end
end
