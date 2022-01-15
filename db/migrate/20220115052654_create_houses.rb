class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :size
      t.boolean :sold
      t.integer :bed
      t.integer :bath
      t.integer :garage
      t.string :image

      t.timestamps
    end
  end
end
