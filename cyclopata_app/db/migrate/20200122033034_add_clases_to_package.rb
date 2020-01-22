class AddClasesToPackage < ActiveRecord::Migration[6.0]
  def change
    add_column :packages ,:clases ,:integer
    add_column :packages ,:is_active ,:boolean
  end
end
