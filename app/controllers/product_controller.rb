# frozen_string_literal: true

class ProductController < ApplicationController
  def index
       
# note: i think a better way to do this would be to add a column to the product table "average_rating" - this could update everytime a review is submitted and would be far less expensive...

   @products = Product.joins(
    "INNER JOIN (#{Review.select('product_id, AVG(rating) AS avg_rating').group('product_id').to_sql}) AS reviews ON reviews.product_id = products.id"
  ).order('reviews.avg_rating DESC')
   
    render json: @products, status: :ok
  end

  def show
    @product = Product.find(show_params[:id])
    render json: @product, status: :ok
  end

  private

  def show_params
    params.permit(:id)
  end
end
