# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#CITY
santo_domingo = City.create(name: 'Santo Domingo')
santo_domingo.neighborhoods.create(name: 'Bella Vista')

#BUSINESS OWNER
owner_user = User.create(firstname: 'Johnny', lastname: 'Ramos', email: 'johnram528@gmail.com', password: 'oronegro')

owner_user.create_business_unit(status: 'complete', description: 'testing my BU', address: '3250 perry ave, Bronx, NY', bio: 'I love watching dogs', headline: 'the dog whisperer', created_at: Time.now, neighborhood_id: 1)

owner_user.business_unit.create_home(smoking: false, square_feet: 500)

#SERVICE
dog_walking = Service.create(title: 'walking', rate_unit: 'hour')
owner_user.business_unit.business_services.build(service_id: 1  ).save

#PET_OWNER
guest_user = User.create(firstname: 'Test', lastname: 'Name', email: 'test@gmail.com', password: 'oronegro')

guest_user.pets.create(name: 'Dusty', dob: Date.new(2015, 2, 28), species: 'dog', race:'chihuahua', size: 1, sex: 'M' )

#RESERVATION
guest_user.reservations.create(checkin: Date.today, checkout: Date.new(2017,8,1), business_service_id:1, created_at: Time.now )



