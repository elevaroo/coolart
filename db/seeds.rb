require "open-uri"

Order.destroy_all
FavoriteArtwork.destroy_all
Tag.destroy_all
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
  email: "angelo@despo.com",
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

painting = Category.create!(name:"Painting")
sculpture = Category.create!(name:"Sculpture")
photography = Category.create!(name:"Photography")
print_new = Category.create!(name:"Print")
drawing = Category.create!(name:"Drawing")
mixed = Category.create!(name:"Mixed Media")

oil_paint = Medium.create!(name: "Oil paint")
watercoulor = Medium.create!(name: "Watercolour")
pencil = Medium.create!(name: "Pencil")
etching = Medium.create!(name: "Etching")
lithography = Medium.create!(name: "Lithography")
bronze = Medium.create!(name: "Bronze")
marble = Medium.create!(name: "Marble")
wood = Medium.create!(name: "Wood")
iron = Medium.create!(name: "Iron")
plastic = Medium.create!(name: "Plastic")
acrylic = Medium.create!(name: "Acrylic paint")
chalk = Medium.create!(name: "Chalk")
pastel = Medium.create!(name: "Pastel")


cows = Artwork.new(
  name: "Cows",
  description: "Printed cows",
  year: Date.ordinal(1971),
  price: 950,
  height: 80,
  width: 50,
  medium: watercoulor,
  category: print_new,
  artist: user_artist.account
  )

  cows_photo = URI.open('https://www.moma.org/media/W1siZiIsIjI3NjcwMiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=932dfadd62dc008e')
  cows.photos.attach(io: cows_photo, filename: "cows.jpg", content_type: 'image/jpg')
  cows.save!

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


  woman = Artwork.new(
  name: "Woman",
  description: "naked bathing woman",
  year: Date.ordinal(1931),
  price: 9300,
  height: 60,
  width: 40,
  medium: oil_paint,
  category: painting,
  artist: pablo.account
  )
  woman_photo = URI.open('https://www.arthipo.com/image/cache/catalog/artists-painters/p/pablo-picasso/pp025-Seated-woman-doing-her-hair-1000x1000.jpg')
  woman.photos.attach(io: woman_photo, filename: "woman.jpg", content_type: 'image/jpg')
  woman.save!

  desire = Artwork.new(
  name: "Desire",
  description: "a man's desire in a woman's eyes",
  year: Date.ordinal(2007),
  price: 2600,
  height: 60,
  width: 40,
  medium: oil_paint,
  category: painting,
  artist: pablo.account
  )

  desire_photo = URI.open('https://miro.medium.com/max/2560/1*j4s3g9htmnZDmbSrIKn5eQ.jpeg')
  desire.photos.attach(io: desire_photo, filename: "desire.jpg", content_type: 'image/jpg')
  desire.save!



  neighbour = Artwork.new(
  name: "Neighbour",
  description: "sculture based on my neighbour who doesn't have a curtain in her bathroom",
  year: Date.ordinal(2016),
  price: 3200,
  height: 170,
  width: 70,
  medium: plastic,
  category: sculpture,
  artist: vicart.account
  )

  neighbour_photo = URI.open('https://assets.catawiki.nl/assets/2019/11/24/d/1/8/d18572e3-6fea-46fd-9620-2b2c2e8cff93.jpg')
  neighbour.photos.attach(io: neighbour_photo, filename: "neighbour.jpg", content_type: 'image/jpg')
  neighbour.save!


  dona = Artwork.new(
  name: "Dona",
  description: "representing dona, a saint from Greek mythology",
  year: Date.ordinal(2017),
  price: 2200,
  height: 180,
  width: 50,
  medium: bronze,
  category: sculpture,
  artist: desposito.account
  )

  dona_photo = URI.open('https://i.pinimg.com/originals/70/76/c3/7076c39da2818733b17578ae19e86c96.jpg')
  dona.photos.attach(io: dona_photo, filename: "dona.jpg", content_type: 'image/jpg')
  dona.save!


 paris = Artwork.new(
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

  paris_photo = URI.open('https://cdn-stream.httpid.com/c204/wp-content/uploads/2015/11/paris-sunshine.jpg')
  paris.photos.attach(io: paris_photo, filename: "paris.jpg", content_type: 'image/jpg')
  paris.save!




 sunshine = Artwork.new(
  name: "sunshine",
  description: "sunshine on a nice day",
  year: Date.ordinal(2020),
  price: 480,
  height: 30,
  width: 20,
  medium: oil_paint,
  category: drawing,
  artist: vicart.account
  )
  sunshine_photo = URI.open('https://images.squarespace-cdn.com/content/5ac2528812b13f7c187dcd15/1561680895735-2Q9RWY70TKCI3ASRIXY1/finding-sunshine.jpg?content-type=image%2Fjpeg')
  sunshine.photos.attach(io: sunshine_photo, filename: "sunshine.jpg", content_type: 'image/jpg')
  sunshine.save!




