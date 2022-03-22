class OrdersController < ApplicationController
  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render template: "orders/index"
    else
      render json: {message: "User must be logged in."}, status: :unauthorized
    end
  end
  
  def show
    @order = Order.find_by(id: params[:id])
    if current_user && @order.user == current_user
      render template: "orders/show"
    else
      render json: {message: "User must be logged in."}, status: :unauthorized
    end
  end

  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity].to_i,
        tax: product.tax * params[:quantity].to_i,
        total: product.total * params[:quantity].to_i
      )
      @order.save
      product.quantity -= @order.quantity
      product.save
      render template: "orders/show"
    else
      render json: {message: "User must be logged in."}, status: :unauthorized
    end
  end
end
