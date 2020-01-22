class AddActives < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches,:is_active,:boolean
  end
end
