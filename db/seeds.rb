# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    Cliente.create({
        nome: Faker::Name.name,
        email: Faker::Internet.email
    })
end

5.times do
    Tag.create({
        label: Faker::University.name,
        color: Faker::Color.hex_color
    })
end

TagCliente.create([
    {tag_id: 1 , cliente_id: 1},
    {tag_id: 2 , cliente_id: 1},
    {tag_id: 3 , cliente_id: 1},
    {tag_id: 4 , cliente_id: 2},
    {tag_id: 1 , cliente_id: 1},
    {tag_id: 2 , cliente_id: 4},
    {tag_id: 3 , cliente_id: 5},
    {tag_id: 4 , cliente_id: 5},
    {tag_id: 5 , cliente_id: 2}
])


