5.times do
  Event.create(
    name: Faker::Music.album,
    location: Faker::Address.city,
    contact_email: Faker::Internet.email,
    external_link: Faker::Internet.domain_name,
    description: Faker::Lorem.paragraph,
)
end 

