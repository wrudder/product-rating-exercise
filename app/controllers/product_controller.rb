class ProductController < ApplicationController
  def index
    @products = Product.all
    json_response(@products)
  end

  def show
    json_response(Product.find(params[:id]))
  end
end
