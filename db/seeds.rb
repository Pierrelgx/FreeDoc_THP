# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'as-duration'   #pbl d'install
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


# seed Spéciality
my_speciality = ['angiologue','généraliste','cardiologue','dentiste','pneumologue']
my_speciality.each { |spe| Speciality.create(name: spe) }

# seed les Patient
50.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# seed les Doctor
10.times do
  s = Speciality.order("RANDOM()").limit(1).ids[0]
  Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    speciality: s,
    zip_code: Faker::Number.number(5)
  )
end

# seed pour les City
10.times do
  City.create!(
    name_town: Faker::Address.city
  )
end

