
Artwork.destroy_all
Medium.destroy_all
Category.destroy_all
Collector.destroy_all
Artist.destroy_all
User.destroy_all

  ndashiz = User.create!(
  first_name: "Simon",
  last_name: "Goffin",
  email: "gloirealarue@gmail.com",
  username: "ndashiz",
  password: "lewagon",
  account: Collector.create!()
  )

george1 = User.create!(
  first_name: "George",
  last_name: "Ferland",
  email: "george_ferland@gmail.com",
  username: "George1",
  password: "lewagon",
  account: Collector.create!()
  )

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
    vita: "hello I'm Andy",
    artschool: "NY Art Academy"
    )
  )

  desposito = User.create!(
  first_name: "Angelo",
  last_name: "Despo",
  email: "andy@warhol.com",
  username: "Desposito",
  password: "lewagon",
  account: Artist.create!(
    location: "Paris, France",
    nationality: "French",
    vita: "Hello, I'm Angelo,I have a passion for art and I specialise in sculpture.",
    artschool: "Paris School of Art"
    )
  )


   vicart = User.create!(
  first_name: "Victoria",
  last_name: "Guettaf",
  email: "victoria@mail.com",
  username: "VicArt",
  password: "lewagon",
  account: Artist.create!(
    location: "Brussels, Belgium",
    nationality: "Belgian",
    vita: "Hello, I'm Angelo,I have a passion for art and I specialise in sculpture.",
    artschool: "ENSAV La Cambre"
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

  desire = Artwork.create!(
  name: "Desire",
  description: "a man's desire in a woman's eyes",
  year: Date.ordinal(2007),
  price: 2600,
  height: 60,
  width: 40,
  medium: oil,
  category: painting,
  artist: pablo.account
  )

sculpture = Category.create!(name:"sculpture")
plastic = Medium.create!(name: "plastic")

  neighbour = Artwork.create!(
  name: "Neighbour",
  description: "sculture based on my neighbour who doesn't have a curtain in her bathroom",
  year: Date.ordinal(2016),
  price: 3200,
  height: 170,
  width: 70,
  medium: plastic,
  category: sculture,
  artist: vicart.account
  )

sculpture = Category.create!(name:"sculpture")
bronze = Medium.create!(name: "bronze")

  Dona = Artworks.create!(
  name: "Dona",
  description: "representing dona, a saint from Greek mythology",
  year: Date.ordinal(2017),
  price: 2200,
  height: 180,
  width: 50,
  medium: bronze,
  category: sculture,
  artist: desposito.account
  )

photography = Category.create!(name:"photography")
lithography = Medium.create!(name: "lithography")

 paris = Artworks.create!(
  name: "Paris ",
  description: "Paris photo taken from a helicopter",
  year: Date.ordinal(2015),
  price: 890,
  height: 100,
  width: 40,
  medium: lithography,
  category: photography,
  artist: desposito.account
  )


drawing = Category.create!(name:"drawing")
oil_paint = Medium.create!(name: "Oil paint")

 sunshine = Artworks.create!(
  name: "sunshine",
  description: "Paris photo taken from a helicopter",
  year: Date.ordinal(2020),
  price: 480,
  height: 30,
  width: 20,
  medium: Watercolour,
  category: drawing,
  artist: vicart.account
  )


