# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating all workers"

Arthur = Worker.create!(
  first_name: 'Arthur',
  last_name: 'Renaud',
  status: 'interim'
  )

Julie = Worker.create!(
  first_name: 'Julie',
  last_name: 'Priou',
  status: 'medic'
  )

Marc = Worker.create!(
  first_name: 'Marc',
  last_name: 'Forlair',
  status: 'medic'
  )

Antoine = Worker.create!(
  first_name: 'Antoine',
  last_name: 'Kinder',
  status: 'interne'
  )

Emilie = Worker.create!(
  first_name: 'Emilie',
  last_name: 'Trias',
  status: 'medic'
  )

Lea = Worker.create!(
  first_name: 'Lea',
  last_name: 'Girond',
  status: 'interim'
  )


puts "creating all shifts"

Shift_1 = Shift.create!(
  planning_id: '1',
  user_id: '1',
  start_date: '2018-2-1'
  )

Shift_2 = Shift.create!(
  planning_id: '1',
  user_id: '2',
  start_date: '2018-2-2'
  )

Shift_3 = Shift.create!(
  planning_id: '1',
  user_id: '3',
  start_date: '2018-2-3'
  )

Shift_4 = Shift.create!(
  planning_id: '1',
  user_id: '4',
  start_date: '2018-2-4'
  )

Shift_5 = Shift.create!(
  planning_id: '1',
  user_id: '5',
  start_date: '2018-2-5'
  )

Shift_6 = Shift.create!(
  planning_id: '1',
  user_id: '6',
  start_date: '2018-2-6'
  )

Shift_7 = Shift.create!(
  planning_id: '1',
  user_id: '1',
  start_date: '2018-2-7'
  )

Shift_8 = Shift.create!(
  planning_id: '1',
  user_id: '2',
  start_date: '2018-2-8'
  )

Shift_9 = Shift.create!(
  planning_id: '1',
  user_id: '3',
  start_date: '2018-2-9'
  )

Shift_10 = Shift.create!(
  planning_id: '1',
  user_id: '5',
  start_date: '2018-2-10'
  )
