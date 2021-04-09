class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def new
  end

  def create
  end

  private

  def product_params
    params.require(:product).permit(:name, :tagline, :url)
  end
end
