class ProductsController < ApplicationController
  def show_first
    render json: {message: "show the first product"}
  end

  def show_all
    render json: {message: "show all products"}
  end
end
