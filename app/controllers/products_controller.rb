class ProductsController < ApplicationController
  def show_first
    first_product = Product.first
    render json: {
      name: first_product.name, 
      price: first_product.price, image_url: first_product.image_url, description: first_product.description}
  end

  def show_all
    all_products = Product.all
    render json: all_products.as_json
  end

  def show_last
    last_product = Product.last
    render json: {
      name: last_product.name, 
      price: last_product.price, image_url: last_product.image_url, description: last_product.description}
  end

  def by_lookup
    product_id = params[:id]
    product_info = Product.find(product_id)
    render json: product_info.as_json
  end

end
