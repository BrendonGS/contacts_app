# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# first_name = Faker::Name.first_name

# 1000.times do
# first_name = Faker::Name.first_name
# last_name = Faker::Name.last_name

# contact = Contact.new(
#                       first_name: first_name,
#                       last_name: last_name,
#                       email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                       phone_number: Faker::PhoneNumber.phone_number

#                       )
# contact.save 
# end

ContactGroup.destroy_all

contacts = Contact.all
group_ids = Group.pluck(:id)

contacts.each do |contact|
 selected_group_ids = group_ids.sample(rand(1..4))

 selected_group_ids.each do |group_id|
   ContactGroup.create(contact_id: contact.id, group_id: group_id )
 end
end

# Group.create(name: "")
# Group.create(name: "")
# Group.create(name: "")


# ContactGroup.create(contact_id: , group_id: )
# ContactGroup.create(contact_id: , group_id: )
# ContactGroup.create(contact_id: , group_id: )



