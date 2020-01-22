class AddReferenceCoaches < ActiveRecord::Migration[6.0]
  def change
    add_reference :coaches,:coach_type,index: true,foreign_key:true
  end
end
