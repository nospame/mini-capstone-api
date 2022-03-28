class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    render template: "orders/index"
  end
  
  def show
    @order = Order.find_by(id: params[:id])
    if @order.user == current_user
      render template: "orders/show"
    else
      render json: {message: "User must be logged in."}, status: :unauthorized
    end
  end

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    @order = Order.new(
      user_id: current_user.id
    )
  
    carted_products.each do |cp|
      @order.subtotal += cp.product.price
      @order.tax += cp.product.tax
      @order.total += cp.product.total
    end

    @order.save

    carted_products.each do |cp|
      cp.status = "purchased"
      cp.order_id = order.id
      cp.save
    end

    render template: "orders/show"
  end
end
