# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Review.destroy_all
User.destroy_all
Hike.destroy_all

4.times do
  userOne = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: "000000"
  )
  userOne.remote_photo_url = Cloudinary::Utils.cloudinary_url "sam-beaup-704520-unsplash.jpg"
  userOne.save!
end

user = User.new(
  first_name: "Claire",
  last_name: "Skies",
  email: "claireskies@sharklasers.com",
  address: "5333 Casgrain",
  password: "passwordcanbechangedlater"
  )
  user.remote_photo_url = Cloudinary::Utils.cloudinary_url "joe-gardner-74378-unsplash.jpg"
  user.save!

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

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4501_copie.jpg",
  name: "Mount Swan Lake",
  city: "Grand Jardins National Park",
  category: "Intermediate",
  length: 5,
  km: 11.4,
  description: "Mount Swan Lake is a mountain in Quebec (Canada) part of the Laurentians.
  This 980-meter-high summit overlooking the Gouffre River Valley is one of the main attractions of the Grands-Jardins National Park."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121178/IMG_4725-Modifier.jpg",
  name: "The chouenne",
  city: "Grand Jardins National Park",
  category: "Intermediate",
  length: 2,
  km: 4.8,
  description: "Trail giving access to a summit of 730 m of altitude.
  Magnificent views of the valley and the facade of the Gros Bras mountain.
  A dazzling show from the first kilometer of hiking."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121149/hautes-gorges.jpg",
  name: "The Acropolis of the Draveurs",
  city: "Park of the high gorges of the Malbaie river",
  category: "Advanced",
  length: 5,
  km: 10.4,
  description: "An essential hike that leads to a breathtaking view over the Malbaie River.
  If you are not too agoraphobic, climb this steep and rather busy trail.
  800 meters in altitude in less than 3 km to the three peaks of 300 to 450m each."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121152/ura-druchuk-1144555-unsplash.jpg",
  name: "Sentier de l’éperon",
  city: "Jacques Cartier National Park",
  category: "Intermediate",
  length: 2,
  km: 5.4,
  description: "Rub shoulders with the meandering river to shoulder.
  Exceptional views on the landscape of the valley. Also discover the rich history of the park with 5 panels Discovery"
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_6715-2.jpg",
  name: "Sentier des loups",
  city: "Jacques Cartier National Park",
  category: "Advanced",
  length: 3,
  km: 11,
  description: "Breathtaking! See the most striking fractures massive Laurentians: the spectacular valleys of the Jacques Cartier and Sautauriski"
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_2377.jpg",
  name: "The manitou",
  city: "Mont Tremblant National Park",
  category: "Easy",
  length: 45,
  km: 0.6,
  description: "Trail for all skill levels Spectacular view from 360°Observation Tower"
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_2370.jpg",
  name: "Hiking Soaring",
  city: "Mont Tremblant National Park",
  category: "Intermediate",
  length: 1,
  km: 6.7,
  description: "The sector of Pimbina offers, it seems, almost always better snow conditions and more perceptible tranquility than in the sector of the Devil.
  The beautiful L'Envol trail is a fine example of the area's treasures with its belvedere and its beautiful snowy undergrowth."
)

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_5049-5.jpg",
  name: "Hiking Centennial",
  city: "Mont Tremblant  National Park",
  category: "Advanced",
  length: 5,
  km: 9.5,
  description: "Centennial Park Loop Trail is a 2.4 kilometer lightly trafficked loop trail located near Thunder Bay, Ontario, Canada that offers the chance to see wildlife.
  The trail is good for all skill levels and primarily used for hiking, walking, and mountain biking."
)

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121151/jacalyn-beales-294154-unsplash.jpg",
  name: "Mont Saint Joseph",
  city: "Mount Megantic National Park",
  category: "Intermediate",
  length: 5,
  km: 9.4,
  description: "Mont Saint-Joseph is located in the beautiful Mont-Mégantic National Park, near the village of Notre-Dame-des-Bois in the Eastern Townships.
  Although this park is rather known to the public by its famous astronomical observatory located at the top of Mont Mégantic, it nonetheless remains a favorite spot for hiking with a network of more than 30 km of hiking trails ."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121179/IMG_4392-2.jpg",
  name: "The Mont Mégantic",
  city: "Mount Megantic National Park",
  category: "Intermediate",
  length: 7,
  km: 10.7,
  description: "Mont Mégantic is a monadnock located in Québec, Canada, about 15 km north of the border between Québec and the U.S. states of Maine and New Hampshire.
  Mégantic is on the border of the regional county municipalities of Le Granit and Le Haut-Saint-François. Its summit is the highest point of the latter.
  Many geologists believe that Mont Mégantic is a member of the Monteregian Hills formed by the New England hotspot, as it has the same mechanism and depth of intrusion."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121150/edward-koorey-767847-unsplash.jpg",
  name: "Sentier Les Caps",
  city: "Saguenay Fjord National Park",
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
  city: "Saguenay Fjord National Park",
  category: "Easy",
  length: 3,
  km: 5,
  description: "The White Falls Trail runs through a deciduous forest dotted with tall white pines.
  In an undergrowth covered with ferns, the path then runs along the Blanche River with numerous waterfalls, to the foot of the first waterfall where a terrace has been laid out to relax while admiring the torrents of water running down the mountain."
)

Hike.create!(
  photo: "https://res.cloudinary.com/dimbka7de/image/upload/v1551121151/luc-tribolet-748526-unsplash.jpg",
  name: "Calvaire d'Oka",
  city: " Oka National Park",
  category: "Easy",
  length: 1,
  km: 4.4,
  description: "The Calvary of Oka is a way of cross formed of seven towers erected between 1740 and 1742.
  The small chapels, made of roughcast rubble, are topped with pavilion roofs or with two slopes."
)

Hike.create!(
  photo:"https://res.cloudinary.com/dimbka7de/image/upload/v1551121177/IMG_1435-2.jpg",
  name: "L'Étang Fer de Lance",
  city: "Mount Orford National Park",
  category: "Easy",
  length: 1,
  km: 3.5,
  description: "A pleasant walk in a maple grove leading you to a belvedere offering a superb panorama of the Mont Orford massif and the pond Fer-de-Lance."
)

reviews_content = [
  "Welcome",
  "Hello",
  "Bonjour",
  "Welcome",
  "Hello"
]

30.times do
  Review.create!(
    stars: rand(1..5),
    content: reviews_content[rand(0..4)],
    user_id: User.order("RANDOM()").first.id,
    hike_id: Hike.order("RANDOM()").first.id
  )
end

# 10.times do
#   Favourite.create!(
#     user_id: User.order("RANDOM()").first.id,
#     hike_id: Hike.order("RANDOM()").first.id
#   )
# end
