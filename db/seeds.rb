# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Picture.destroy_all
Favourite.destroy_all
Review.destroy_all
User.destroy_all
Hike.destroy_all

mainUser = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  address: Faker::Address.street_address,
  password: "000000"
)
  mainUser.remote_photo_url = Cloudinary::Utils.cloudinary_url "sam-beaup-704520-unsplash.jpg"
  mainUser.save!

seanUser = User.new(
  first_name: "Sean",
  last_name: "Kong",
  email: "seankong@gmail.com",
  address: "15 Eden Park Rd, M4B 3C3, Toronto, Canada",
  password: "000000"
)
 seanUser.remote_photo_url = Cloudinary::Utils.cloudinary_url "sean-kong-291651-unsplash.jpg"
 seanUser.save!

michaelUser = User.new(
  first_name: "Micheal",
  last_name: "Frattaroli",
  email: "michealfrattaroli@gmail.com",
  address: "15 Sunnylea K9K 2G2, Peterborough, Canada",
  password: "000000"
)
  michaelUser.remote_photo_url = Cloudinary::Utils.cloudinary_url "michael-frattaroli-234665-unsplash.jpg"
  michaelUser.save!

joeUser = User.new(
  first_name: "Joe",
  last_name: "Robles",
  email: "joerobles@gmail.com",
  address: "1000 avenue Amesbury H3Z 1J9, Montreal, Canada",
  password: "000000"
)
  joeUser.remote_photo_url = Cloudinary::Utils.cloudinary_url "joe-robles-602630-unsplash.jpg"
  joeUser.save!

claireUser = User.new(
  first_name: "Claire",
  last_name: "Skies",
  email: "claireskies@sharklasers.com",
  address: "5333 Casgrain H2T 1X3, Montréal, Canada",
  password: "passwordcanbechangedlater"
)
  claireUser.remote_photo_url = Cloudinary::Utils.cloudinary_url "joe-gardner-74378-unsplash.jpg"
  claireUser.save!

  chrisUser = User.new(
    first_name: "Christopher",
    last_name: "Harr",
    email: "ChristopherGHarr@dayrep.com",
    address: "1498 St-Jacques Est, Victoriaville, QC G6P 4E5",
    password: "CeLohka1thi"
  )
chrisUser.remote_photo_url = "https://images.pexels.com/photos/433398/pexels-photo-433398.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
chrisUser.save!

gailUser = User.new(
    first_name: "Gail",
    last_name: "Occasio",
    email: "GailPOcasio@jourrapide.com",
    address: "933 chemin Hudson, Montreal, QC H4J 1M9",
    password: "booD4Uhai"
  )
gailUser.remote_photo_url = "https://images.pexels.com/photos/1832323/pexels-photo-1832323.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
gailUser.save!

kyleUser = User.new(
    first_name: "Kyle",
    last_name: "Scott",
    email: "KyleSScott@teleworm.ca",
    address: "3821 Port Washington Road, Etzikom, AB T0K 0W0",
    password: "OideihuC1"
  )
kyleUser.remote_photo_url = "https://images.pexels.com/photos/936229/pexels-photo-936229.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
kyleUser.save!

jillUser = User.new(
    first_name: "Jill",
    last_name: "Vasquez",
    email: "JillKVasquez@rhyta.com",
    address: "2926 River Street, Forest, Ontario, N0N 1J0",
    password: "eilutie2Ash"
  )
jillUser.remote_photo_url = "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
jillUser.save!

rexUser = User.new(
    first_name: "Rex",
    last_name: "Shapiro",
    email: "RexEShapiro@teleworm.ca",
    address: "4641 Adelaide St, Toronto, Ontario, M5H 1P6",
    password: "ChahQu5ee"
  )
rexUser.remote_photo_url = "https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
rexUser.save!

dianeUser = User.new(
    first_name: "Diane",
    last_name: "Jenkins",
    email: "DianeJJenkins@dayrep.com",
    address: "1502 Princess St, Kingston, ON K7L 1C2",
    password: "diajen35rn21"
  )
dianeUser.remote_photo_url = "https://images.pexels.com/photos/1181519/pexels-photo-1181519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
dianeUser.save!

angelaUser = User.new(
    first_name: "Angela",
    last_name: "Gilmore",
    email: "angelaG453@sharklasers.com",
    address: "4983 11th Ave, Calgary, AB T2P 1M6",
    password: "3289yghfiuebvsdna"
  )

angelaUser.remote_photo_url = "https://images.pexels.com/photos/979599/pexels-photo-979599.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
angelaUser.save!

leeroyUser = User.new(
    first_name: "Leeroy",
    last_name: "Jenkins",
    email: "leeroyjenkins@sharklasers.com",
    address: "938 Cote-Vertu, Montreal, Quebec, H4M 2Y3",
    password: "LEEROOOOOOOYJenkins"
  )
leeroyUser.remote_photo_url = "https://ih0.redbubble.net/image.412417067.9595/mp,550x550,matte,ffffff,t.3u2.jpg"
leeroyUser.save!

hike = Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121151/sam-beaup-704520-unsplash.jpg",
  name: "Mount Albert",
  city: "Gaspésie National Park",
  category: "Advanced",
  length: 5,
  km: 11.4,
  description: "Mont Albert is a mountain in the Chic-Choc range in the Gaspésie National Park in the Gaspé Peninsula of eastern Quebec, Canada.
  At 1,151 m (3,776 ft), it is one of the highest mountains in southern Quebec, and is popular for hiking."
)
picture1 = Picture.new(
  hike: hike,
  user: claireUser,
  description: "Test"
)
picture1.remote_photo_url = "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4501_copie.jpg"
picture1.save!

picture2 = Picture.new(
  hike: hike,
  user: joeUser,
  description: "test2"
)
picture2.remote_photo_url = "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4501_copie.jpg"
picture2.save!

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4501_copie.jpg",
  name: "Mont du Lac des Cygnes",
  city: "Parc National des Grands-Jardins",
  category: "Intermediate",
  length: 5,
  km: 11.4,
  description: "Mount Swan Lake is a mountain in Quebec (Canada) part of the Laurentians.
  This 980-meter-high summit overlooking the Gouffre River Valley is one of the main attractions of the Grands-Jardins National Park."
)


Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121149/hautes-gorges.jpg",
  name: "L'Acropole des Draveurs",
  city: "Hautes-Gorges-De- \nLa-Rivière-Malbaie",
  category: "Advanced",
  length: 5,
  km: 10.4,
  description: "An essential hike that leads to a breathtaking view over the Malbaie River.
  If you are not too agoraphobic, climb this steep and rather busy trail.
  800 meters in altitude in less than 3 km to the three peaks of 300 to 450m each."
)

goodhike = Hike.new(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4725-Modifier.jpg",
  name: "La Chouenne",
  city: "Parc National des Grands-Jardins",
  category: "Easy",
  length: 2,
  km: 4.8,
  description: "Trail giving access to a summit of 730 m of altitude.
  Magnificent views of the valley and the facade of the Gros Bras mountain.
  A dazzling show from the first kilometer of hiking."
)
goodhike.save!

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121152/ura-druchuk-1144555-unsplash.jpg",
  name: "Sentier de l’Éperon",
  city: "Jacques Cartier \nNational Park",
  category: "Intermediate",
  length: 2,
  km: 5.4,
  description: "Rub shoulders with the meandering river to shoulder.
  Exceptional views on the landscape of the valley. Also discover the rich history of the park with 5 panels Discovery"
)


Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_2377.jpg",
  name: "Le manitou",
  city: "Mont-Tremblant \nNational Park",
  category: "Intermediate",
  length: 1,
  km: 0.6,
  description: "Trail for all skill levels Spectacular view from 360°Observation Tower"
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_2370.jpg",
  name: "Randonnée de l'envol",
  city: "Mont-Tremblant \nNational Park",
  category: "Intermediate",
  length: 1,
  km: 6.7,
  description: "The sector of Pimbina offers, it seems, almost always better snow conditions and more perceptible tranquility than in the sector of the Devil.
  The beautiful L'Envol trail is a fine example of the area's treasures with its belvedere and its beautiful snowy undergrowth."
)

badhike = Hike.new(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_6715-2.jpg",
  name: "Sentier des loups",
  city: "Jacques Cartier \nNational Park",
  category: "Easy",
  length: 4,
  km: 11,
  description: "Breathtaking! See the most striking fractures massive Laurentians: the spectacular valleys of the Jacques Cartier and Sautauriski"
)

badhike.save!

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_5049-5.jpg",
  name: "Randonnée du Centenaire",
  city: "Mont-Tremblant \nNational Park",
  category: "Advanced",
  length: 5,
  km: 9.5,
  description: "Centennial Park Loop Trail is a 2.4 kilometer lightly trafficked loop trail located near Thunder Bay, Ontario, Canada that offers the chance to see wildlife.
  The trail is good for all skill levels and primarily used for hiking, walking, and mountain biking."
)

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121151/jacalyn-beales-294154-unsplash.jpg",
  name: "Mont Saint-Joseph",
  city: "Mount Megantic \nNational Park",
  category: "Intermediate",
  length: 5,
  km: 9.4,
  description: "Mont Saint-Joseph is located in the beautiful Mont-Mégantic National Park, near the village of Notre-Dame-des-Bois in the Eastern Townships.
  Although this park is rather known to the public by its famous astronomical observatory located at the top of Mont Mégantic, it nonetheless remains a favourite spot for hiking with a network of more than 30 km of hiking trails ."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_4392-2.jpg",
  name: "Le Mont Mégantic",
  city: "Mount Megantic \nNational Park",
  category: "Intermediate",
  length: 8,
  km: 10.7,
  description: "Mont Mégantic is a monadnock located in Québec, Canada, about 15 km north of the border between Québec and the U.S. states of Maine and New Hampshire.
  Mégantic is on the border of the regional county municipalities of Le Granit and Le Haut-Saint-François. Its summit is the highest point of the latter.
  Many geologists believe that Mont Mégantic is a member of the Monteregian Hills formed by the New England hot-spot, as it has the same mechanism and depth of intrusion."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121150/edward-koorey-767847-unsplash.jpg",
  name: "Sentier Les Caps",
  city: "Saguenay Fjord \nNational Park",
  category: "Advanced",
  length: 5,
  km: 10.2,
  description: "The eastern side of Eternity Bay remains the well-kept secret of hikers.
  Walk through mature and varied forest stands before reaching the Giant's viewpoint, a bare summit where the Eternity Valley unfolds in all its splendor.
  Continue to Cape Eternity if the energy is at the rendezvous."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_2380.jpg",
  name: "Sentier des Chutes",
  city: "Saguenay Fjord \nNational Park",
  category: "Advanced",
  length: 3,
  km: 5,
  description: "The White Falls Trail runs through a deciduous forest dotted with tall white pines.
  In an undergrowth covered with ferns, the path then runs along the Blanche River with numerous waterfalls, to the foot of the first waterfall where a terrace has been laid out to relax while admiring the torrents of water running down the mountain."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121151/luc-tribolet-748526-unsplash.jpg",
  name: "Le Calvaire d'Oka",
  city: "Oka National Park",
  category: "Intermediate",
  length: 2,
  km: 4.4,
  description: "The Calvary of Oka is a way of cross formed of seven towers erected between 1740 and 1742.
  The small chapels, made of roughcast rubble, are topped with pavilion roofs or with two slopes."
)

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121177/IMG_1435-2.jpg",
  name: "L'Étang Fer de Lance",
  city: "Mount Orford \nNational Park",
  category: "Intermediate",
  length: 1,
  km: 3.5,
  description: "A pleasant walk in a maple grove leading you to a belvedere offering a superb panorama of the Mont Orford massif and the pond Fer-de-Lance."
)

reviews_content5 = [
  "The hike was amazing! The view was breathtaking",
  "The hike was worth the travel",
  "Amazing hike! Definitely recommend doing it!",
  "Great hike! I recommend it to everyone",
  "Will hike again!",
  "Incredible views, great weather, What's not to like?",
  "This hike was the best hike I have ever been on, and I have been on a lot",
  "Amazing",
  "5/5",
  "If I could, i would rate it 6/5",
  "My friends and I loved it",
  "Love love love!!!!!"
]

reviews_content4 = [
  "Weather was bad the day i went, but great hike",
  "Would go again",
  "If there was not much noise around, it would have been perfect",
  "Good hike!",
  "Will hike again!",
  "Decent hike",
  "Very nice views",
  "Great hike",
  "Liked it a lot",
  "Nice views",
  "Good place to get back in nature",
  "If you like to get lost in nature, go here",
  "Only giving it 4 stars due to the cloudy weather blocking our views"
]


reviews_content2 = [
  "The weather was horrible",
  "This hike can be improved",
  "No nature",
  "This hike was too long",
  "Not good",
  "Meh",
  "Not good at all",
  "Only saving grace was the moderate view"
]

reviews_content1 = [
  "Horrible trail",
  "Got injured here",
  "This hike is awful",
  "No one go here!",
  "Stay away!!",
  "Never again",
  "Do not go!"
]

5.times do
 reviewgood = Review.new(
    stars: 5,
    content: reviews_content5[rand(0..11)],
    user_id: User.order("RANDOM()").first.id
  )
reviewgood.hike = goodhike
reviewgood.save!
end

5.times do
reviewnice = Review.new(
    stars: 4,
    content: reviews_content4[rand(0..12)],
    user_id: User.order("RANDOM()").first.id
  )
reviewnice.hike = goodhike
reviewnice.save!

end

5.times do
mehreview = Review.new(
    stars: 2,
    content: reviews_content2[rand(0..7)],
    user_id: User.order("RANDOM()").first.id
  )
mehreview.hike = badhike
mehreview.save!
end

5.times do
horriblereview = Review.new(
    stars: 1,
    content: reviews_content1[rand(0..6)],
    user_id: User.order("RANDOM()").first.id
  )
horriblereview.hike = badhike
horriblereview.save!

end


