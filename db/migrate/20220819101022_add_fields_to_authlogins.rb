class AddFieldsToAuthlogins < ActiveRecord::Migration[7.0]
  def change
    add_column :authlogins, :Fname, :string
    add_column :authlogins, :Lname, :string
    add_column :authlogins, :Phone, :string
    add_column :authlogins, :Address, :string
  end
end
