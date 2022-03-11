class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      description: params[:description],
      image_url: params[:image_url]
    )
    product.save
    render json: Product.last.as_json
  end

  def update
    product = Product.find_by(id: params[:id])

    product.update(
      name: params[:name] || product.name,
      price: params[:price] || product.price,
      description: params[:description] || product.description,
      image_url: params[:image_url] || product.image_url
    )

    # product.name = params[:name] || product.name
    # product.price = params[:price] || product.price
    # product.description = params[:description] || product.description
    # product.image_url = params[:image_url] || product.image_url
    # product.save

    render json: product.as_json
  end

  def destroy
    unless Product.destroy_by(id: params[:id]) == []
      message = "Product #{params[:id]} deleted."
    else
      message = "No such product."
    end
    render json: {message: message}
  end
end
