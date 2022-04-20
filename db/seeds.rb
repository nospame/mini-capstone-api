# User.create!([
#   {name: "clifford", email: "clifford@cats.com", password: "password" , admin: false},
#   {name: "kevin", email: "kevin@cats.com", password: "password" , admin: false},
#   {name: "cleocatra", email: "cleo@cats.com", password: "password" , admin: true},
#   {name: "Evan", email: "evan@email.com", password: "password" , admin: true}
# ])
# Supplier.create!([
#   {name: "Hershey", email: "info@hershey.com", phone_number: "555-0123"},
#   {name: "Home Goods", email: "home@goods.com", phone_number: "900-8666"},
#   {name: "Kodak", email: "kodakchrome@kodak.com", phone_number: "866-9999"},
#   {name: "The Computer Store", email: "stuff@computerstore.com", phone_number: "888-1234"}
# ])
# Product.create!([
#   {name: "microphone", price: "40.0", description: "takes sound from the real world and puts it in your computer", quantity: 2, supplier_id: 4},
#   {name: "coffee mug", price: "8.0", description: "ceramic with a round handle", quantity: 17, supplier_id: 2},
#   {name: "fiddle-leaf fig", price: "60.0", description: "a finicky potted plant", quantity: 2, supplier_id: 2},
#   {name: "Bananaphone", price: "27.0", description: "You make phone calls on it, maybe. Maybe you eat it?", quantity: 0, supplier_id: nil},
#   {name: "Yogurt", price: "7.0", description: "Basically old milk", quantity: 0, supplier_id: nil},
#   {name: "Gift Wrapping", price: "2.0", description: "You can wrap things with it or just keep it around because.", quantity: 0, supplier_id: nil},
#   {name: "Yet another crunchy cookie cup", price: "1.75", description: "Peanut butter, chocolate cookie, milk chocolate", quantity: 7, supplier_id: nil},
#   {name: "Polaroid", price: "40.0", description: "An old camera to take instant pictures. Or maybe they make new ones?", quantity: 13, supplier_id: 3}
# ])
Image.create!([
  {url: "https://bloomscape.com/wp-content/uploads/2020/03/bloomscape_ficus-little-fiddle_charcoal-e1625250864922.jpg", product_id: 6},
  {url: "https://images.squarespace-cdn.com/content/v1/52e56f16e4b0d1eb5c77cfbf/1525467849214-VGM0KT7H15VYZ83TMRYQ/First+I+Drink+the+Coffee+-+Stash+Style+Ceramic+Mug.jpg?format=1500w", product_id: 1},
  {url: "https://i.pinimg.com/originals/00/2f/5e/002f5e8ad34dcbb53bfe4e28a6c7538f.jpg", product_id: 7},
  {url: "https://m.media-amazon.com/images/I/61shDrGJbQS._AC_SL1500_.jpg", product_id: 5},
  {url: "https://m.media-amazon.com/images/I/51p2Ta2LOUL._AC_SY355_.jpg", product_id: 2},
  {url: "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg", product_id: 3},
  {url: "https://cdn.cnn.com/cnnnext/dam/assets/210709075130-best-computer-mouse-lead.jpg", product_id: 3},
  {url: "https://i.pinimg.com/originals/00/2f/5e/002f5e8ad34dcbb53bfe4e28a6c7538f.jpg", product_id: 7},
  {url: "https://media.istockphoto.com/photos/creative-idea-layout-fresh-banana-with-yellow-retro-telephone-on-picture-id980647564?k=20&m=980647564&s=612x612&w=0&h=k7FST86YLnyc9KgYjp1bxylJybTHZTrjckTHsJYfZe8=", product_id: 4},
  {url: "https://www.eitanbernath.com/wp-content/uploads/2020/02/Reeses-Peanut-Butter-Cups-1-LOWRES.jpeg", product_id: 7},
  {url: "http://s7d2.scene7.com/is/image/hersheysassets/0_34000_00440_9_701_44000_136_Item_Front?fmt=png-alpha&hei=3000", product_id: 7}
  {url: "http://s7d2.scene7.com/is/image/hersheysassets/0_34000_00440_9_701_44000_136_Item_Front?fmt=png-alpha&hei=3000", product_id: 7}
  {url: "https://cdn.shopify.com/s/files/1/1135/7914/products/New-colors-PDP-b_w-front-tilted_800x.png?v=1622014385", product_id: 2},
  {url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1612970973-polaroid-originals-onestep-1612970962.jpg", product_id: 2}
])
Category.create!([
  {name: "Electronics"},
  {name: "Foods"},
  {name: "Home"},
  {name: "Garden"}
])
CategoryProduct.create!([
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 6, category_id: 3},
  {product_id: 6, category_id: 4},
  {product_id: 8, category_id: 1},
  {product_id: 8, category_id: 3},
  {product_id: 8, category_id: 2}
])
Order.create!([
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 2, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"},
  {user_id: 3, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 3, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 2, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "1.0", tax: "0.09", total: "1.09"},
  {user_id: 3, subtotal: "76.0", tax: "6.84", total: "82.84"},
  {user_id: 3, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 3, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
CartedProduct.create!([
  {product_id: 1, user_id: 2, quantity: 3, status: "carted", order_id: nil},
  {product_id: 1, user_id: 3, quantity: 3, status: "removed", order_id: nil},
  {product_id: 1, user_id: 2, quantity: 1, status: "removed", order_id: nil},
  {product_id: 1, user_id: 3, quantity: 3, status: "purchased", order_id: 25},
  {product_id: 1, user_id: 3, quantity: 5, status: "purchased", order_id: 25},
  {product_id: 6, user_id: 3, quantity: 2, status: "purchased", order_id: 25}
])

