puts "Seeding users..."
nick = User.create!(name: "ndtelep", email: "ndtelep@gmail.com", password: "goyankees")
allyson = User.create!(name: "allonsy", email:"allonslylotz@gmail.com", password: "gocardinals")

puts "Seeding items..."
i1 = Item.create!(user_id: nick.id,
    team: "Adirondack Flames",
    sport: "ice hockey",
    category: "jersey",
    era: "2014-15",
    brand: "CCM",
    made_in: "Canada",
    game_used: false,
    purchase_price: 95,
    asking_price: 200,
    details: "Team-issued red Adirondack Flames home jersey. Blank. Size 56.",
    league: "American Hockey League",
    image_url: "https://thumbs.worthpoint.com/zoom/images1/1/0719/22/adirondack-flames-jersey_1_1f92eadf8eed15b96921c0ca03591786.jpg",
    for_sale: true)
i2 = Item.create!(user_id: nick.id,
    team: "Colorado Rockies",
    sport: "baseball",
    category: "jersey",
    era: "2018",
    brand: "Majestic Flexbase",
    made_in: "USA",
    game_used: true,
    purchase_price: 42,
    asking_price: 100,
    details: "Purple Rockies Spring Training jersey. Spring Training 2018 patch on right sleeve. Number 91, unknown player. Size 48.",
    league: "Major League Baseball",
    image_url: "https://www.denverpost.com/wp-content/uploads/2018/02/rockies_spring_training_003.jpg?w=620",
    for_sale: true)
i3 = Item.create!(user_id: nick.id,
    team: "Cleveland Rockers",
    sport: "basketball",
    category: "shot glass",
    era: "late 1990s",
    brand: "none",
    made_in: "unknown",
    game_used: false,
    purchase_price: 5,
    asking_price: 10,
    details: "Tall Cleveland Rockers shot glass.",
    league: "Women's National Basketball Association",
    image_url: "https://ih1.redbubble.net/image.994173113.5867/flat,750x1000,075,f.jpg",
    for_sale: false)

puts "seeding likes"

Like.create!([{user_id: nick.id, item_id: i1.id}, {user_id: allyson.id, item_id:i3.id}])

puts "seeding complete, happy collecting!"