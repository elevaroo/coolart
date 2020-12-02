# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
Medium.destroy_all
Category.destroy_all
Collector.destroy_all
Artist.destroy_all
User.destroy_all


# p collector_1 = User.create!(
#   first_name: "Ele",
#   last_name: "Elevaroo",
#   email: "ele@me.com",
#   username: "elevaroo",
#   password: "lewagon",
#   )

# p me = Collector.create!()

# collector_1.collector = me


user_collector = User.create!(
  first_name: "Ele",
  last_name: "Elevaroo",
  email: "ele@me.com",
  username: "elevaroo",
  password: "lewagon",
  account: Collector.create!()
  )

user_artist = User.create!(
  first_name: "Andy",
  last_name: "Warhol",
  email: "andy@warhol.com",
  username: "antiwar",
  password: "lewagon",
  account: Artist.create!(
    location: "NY, USA",
    nationality: "American",
    vita: "hello i'm Andy",
    artschool: "NY Art Academy"
    )
  )

prints = Category.create!(name: "Print")
media = Medium.create!(name: "Lithography")

cows = Artwork.create!(
  name: "Cows",
  description: "Printed cows",
  year: Date.ordinal(1971),
  price: 950,
  height: 80,
  width: 50,
  medium: media,
  category: prints,
  artist: user_artist.account
  )

pablo = User.create!(
  first_name: "Pablo",
  last_name: "Picasso",
  email: "pa@blo.com",
  username: "pablopicasso",
  password: "lewagon",
  account: Artist.create!(
    location: "Madrid, Spain",
    nationality: "Spanish",
    vita: "hello i'm Pablo",
    artschool: "Madrid Art Academy"
    )
  )

painting = Category.create!(name: "Painting")
oil = Medium.create!(name: "Oil paint")

  woman = Artwork.create!(
  name: "Woman",
  description: "naked bathing woman",
  year: Date.ordinal(1931),
  price: 9300,
  height: 60,
  width: 40,
  medium: oil,
  category: painting,
  artist: pablo.account
  )


