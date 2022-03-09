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
end
