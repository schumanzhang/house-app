class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :area
      t.float :rating
      t.integer :sold

      t.timestamps
    end
  end
end
