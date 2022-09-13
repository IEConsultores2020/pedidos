class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.text :name
      t.text :identification
      t.text :address
      t.text :phone
      t.text :email
      t.text :country
      t.text :state
      t.text :city
      t.string :comments

      t.timestamps
    end
  end
end
