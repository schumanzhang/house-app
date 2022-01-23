class AddColumnsAdminTable < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :firstname, :string
    add_column :admins, :lastname, :string
  end
end
