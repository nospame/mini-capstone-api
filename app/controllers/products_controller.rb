class ProductsController < ApplicationController
  def show_first
    first_product = Product.first
    render json: {
      name: first_product.name, 
      price: first_product.price, image_url: first_product.image_url, description: first_product.description}
  end

  def show_all
    all_products = Product.all
    render json: {products: all_products}
  end

  def show_last
    last_product = Product.last
    render json: {
      name: last_product.name, 
      price: last_product.price, image_url: last_product.image_url, description: last_product.description}
  end
end
