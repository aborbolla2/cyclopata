class AddPackageRef < ActiveRecord::Migration[6.0]
  def change
    add_reference :packages,:package_type, index:true ,foreign_key:true
  end
end
