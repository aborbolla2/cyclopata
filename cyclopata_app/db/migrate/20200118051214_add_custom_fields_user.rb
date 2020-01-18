class AddCustomFieldsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users,:username ,:string
    add_column :users,:name,:string
    add_column :users,:last_name,:string
    add_column :users,:shoe_size,:float
    add_column :users,:is_admin, :boolean
  end
end
