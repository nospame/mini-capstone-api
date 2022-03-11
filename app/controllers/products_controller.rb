class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products.as_json
  end

  def show
    show_product = Product.find_by(id: params[:id])
    render json: show_product.as_json
  end

  def create
    Product.create(
      name: params[:name],
      price: params[:price].to_i,
      description: params[:description],
      image_url: params[:image_url]
    )
    render json: Product.last.as_json
  end
end
