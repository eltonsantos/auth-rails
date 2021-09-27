# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Rodando o seed.."

puts "Criando usuários"
User.create(name: "Admin", email: "admin@admin.com", admin: true, supervisor: false, collaborator: false, password: 123456, role: 0)
User.create(name: "Supervisor", email: "supervisor@supervisor.com", admin: false, supervisor: true, collaborator: false, password: 123456, role: 1)
User.create(name: "Colaborador", email: "colaborador@colaborador.com", admin: false, supervisor: false, collaborator: true, password: 123456, role: 2)
User.create(name: "Superadmin", email: "superadmin@superadmin.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 0)
User.create(name: "Auditor", email: "auditor@auditor.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 1)
User.create(name: "Gerente", email: "gerente@gerente.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 2)
User.create(name: "Elton Santos", email: "elton@elton.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 3)
User.create(name: "Ericson Santos", email: "ericson@ericson.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 3)
User.create(name: "Eloy Padilha", email: "eloy@eloy.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 3)
User.create(name: "Vânia Melo", email: "vania@vania.com", admin: false, supervisor: false, collaborator: false, password: 123456, role: 3)

puts "Criando os carros"
Car.create(name: "Fit", marca: "Honda", user_id: 7)
Car.create(name: "Corsa Wind", marca: "Chevrolet", user_id: 7)
Car.create(name: "Gol", marca: "Volkswagen", user_id: 8)
Car.create(name: "Corolla", marca: "Toyota", user_id: 8)
Car.create(name: "Escort", marca: "Ford", user_id: 9)
Car.create(name: "Golf", marca: "Volkswagen", user_id: 9)
Car.create(name: "Siena", marca: "Fiat", user_id: 10)
Car.create(name: "Onix", marca: "Chevrolet", user_id: 10)