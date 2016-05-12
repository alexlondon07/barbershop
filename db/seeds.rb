# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Barbershop
15.times do
 barbershop = BarberShop.create(
   name: Faker::Address.street_name,
   code: Faker::Code.isbn,
   business_name: Faker::Company.name,
   nit: Faker::Code.isbn,
   address: Faker::Address.street_address,
   city: Faker::Address.city,
   phone: Faker::Company.duns_number,
   owner: Faker::Name.name,
   contact_name: Faker::Name.name,
   contact_phone1: Faker::Company.duns_number,
   contact_phone2: Faker::Company.duns_number,
   contact_email: Faker::Internet.email,
   enable: 't'
 )

 service = Service.create(
   name: Faker::Name.name,
   code: Faker::Code.isbn,
   description: Faker::Lorem.sentence,
   price: Faker::Commerce.price,
   barber_shop_id: '1',
   enable: 't'
 )

 line = Line.create(
   name: Faker::Name.name,
   code: Faker::Code.isbn,
   description: Faker::Lorem.sentence,
   barber_shop_id: '1',
   enable: 't'
 )

 subline = Subline.create(
   name: Faker::Name.name,
   code: Faker::Code.isbn,
   description: Faker::Lorem.sentence,
   line_id: '1',
   enable: 't'
 )

end
