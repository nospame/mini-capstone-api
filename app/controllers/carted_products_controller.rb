class CartedProductsController < ApplicationController
  before_action :authenticate_user
  
  def index
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: carted_products.as_json
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def update
    carted_product = CartedProduct.find_by(id: params[:id])
    if current_user.id == carted_product.user_id
      carted_product.status = params[:status] || carted_product.status
      carted_product.quantity = params[:quantity] || carted_product.quantity
      carted_product.save
      render json: carted_product.as_json
    else
      render json: {}, status: unauthorized
    end
  end
end
