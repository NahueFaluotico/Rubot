require_relative 'Robots/flyer'
require_relative 'Robots/humanoid'
require_relative 'Robots/miner'
require_relative 'person'

puts "Construyendo robots...\n\n"

flyer_robot_1 = Flyer.new('Flyer Robot One')
humanoid_robot_1 = Humanoid.new ('Humanoid Robot One')
miner_robot_1 = Miner.new ('Miner Robot One')

flyer_robot_2 = Flyer.new('Flyer Robot Two')

puts "Lanzando los robots...\n\n"
flyer_robot_1.release!
humanoid_robot_1.release!
miner_robot_1.release!

person_1 = Person.new('Jhon')
person_2 = Person.new('Rachel')

puts "Habilidades de los tipos de robots:"
Flyer.show_abilities
Humanoid.show_abilities
Miner.show_abilities

puts "\n\n Comprando robots..."
flyer_robot_1.buy!(person_1)
humanoid_robot_1.buy!(person_2)
miner_robot_1.buy!(person_1)
flyer_robot_2.buy!(person_2)

puts "\n\n Propiedades de los robots:"
flyer_robot_1.show_distance(100)
humanoid_robot_1.show_distance(100)
miner_robot_1.show_distance(100)

puts "\n\nReporte:"
Robot.show_report
