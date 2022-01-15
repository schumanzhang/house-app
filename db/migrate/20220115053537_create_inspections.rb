class CreateInspections < ActiveRecord::Migration[6.1]
  def change
    create_table :inspections do |t|
      t.string :name
      t.string :day
      t.text :comment
      t.integer :house_id

      t.timestamps
    end
  end
end
