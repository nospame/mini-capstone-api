require 'http'
require 'tty-table'

# first_product = HTTP.get "http://localhost:3000/first-item"

# first_product = first_product.parse(:json)

# puts "Product name: #{first_product["name"]}"
# puts "Description: #{first_product["description"]}"
# puts "Price: $#{first_product["price"]}"
# puts "Image: #{first_product["image_url"]}"

all_products = HTTP.get "http://localhost:3000/all-items"
all_products = all_products.parse(:json)

# all_products.each do |product|
#   puts "Product name: #{product["name"]}"
#   puts "Description: #{product["description"]}"
#   puts "Price: $#{product["price"]}"
#   puts "Image: #{product["image_url"]}"
#   puts ""
# end

product_table = TTY::Table.new(["Name", "Price", "Description"],[])
all_products.each do |product|
  product_array = [product["name"], product["price"], product["description"]]
  product_table << product_array
end

puts product_table.render(:ascii)
