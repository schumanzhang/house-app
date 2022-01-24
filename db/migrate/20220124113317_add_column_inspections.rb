class AddColumnInspections < ActiveRecord::Migration[6.1]
  def change
    add_column :inspections, :contact, :string
  end
end
