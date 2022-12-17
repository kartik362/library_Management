class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Fname
      t.string :Lname
      t.string :Email
      t.integer :Phone
      t.string :Address
      t.string :Username
      t.string :Password
      t.string :Cnfpassword

      t.timestamps
    end
  end
end
