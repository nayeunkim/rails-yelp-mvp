# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all
puts 'Destroying all restaurants!'

#category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: 'chinese')
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: 'italian')
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: 'japanese')
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: 'french')
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: 'belgian')

puts 'Created 5 new restaurants!'
