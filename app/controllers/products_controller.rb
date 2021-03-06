class ProductsController < ApplicationController
  # before_action :authenticate_user, only: [:create, :update, :destroy]
  
  def index
    pp current_user
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      description: params[:description],
      quantity: params[:quantity] || 0
    )
    params[:images].each do |image|
      @product.images.new(url: image)
    end
    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.quantity = params[:quantity] || @product.quantity
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    params[:new_images].each do |new_image|
      @product.images.new(url: new_image)
    end
    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    message = "No such product."
    if product && product.destroy
      message = "Product #{params[:id]} deleted."
    end
    render json: {message: message}
  end
end
