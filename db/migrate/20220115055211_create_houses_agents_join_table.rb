class CreateHousesAgentsJoinTable < ActiveRecord::Migration[6.1]
  def change
    # many to many setup, check db schema afterwards
    create_join_table :houses, :agents
  end
end
