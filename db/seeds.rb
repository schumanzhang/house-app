# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

house1 = House.new
house1.address = "32 Smith St SmithField NSW"
house1.size = 300
house1.sold = false
house1.bed = 4
house1.bath = 2
house1.garage = 2
house1.image = "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
house1.save

house2 = House.new
house2.address = "10001 King St Kingsland Qld"
house2.size = 120
house2.sold = false
house2.bed = 3
house2.bath = 1
house2.garage = 1
house2.image = "https://images.unsplash.com/photo-1549517045-bc93de075e53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"
house2.save

house3 = House.new
house3.address = "43 Queen Ave Queenstown VIC"
house3.size = 800
house3.sold = true
house3.bed = 6
house3.bath = 4
house3.garage = 4
house3.image = "https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
house3.save

agent1 = Agent.new
agent1.name = "Mark Smith"
agent1.area = "Smithfield"
agent1.rating = 3.45
agent1.sold = 45
agent1.save

agent2 = Agent.new
agent2.name = "Jane Doe"
agent2.area = "Queenstown"
agent2.rating = 4.45
agent2.sold = 453
agent2.save

agent3 = Agent.new
agent3.name = "Joey"
agent3.area = "Kingsland"
agent3.rating = 2.45
agent3.sold = 14
agent3.save

house1.agents << agent1
house1.agents << agent2

house2.agents << agent2
house3.agents << agent3

# run rails console
# check that the seeds are set up correctly
# house = House.find(1)
# house.agents