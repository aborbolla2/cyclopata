class AddClasestoUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users,:clases,:integer
  end
end
