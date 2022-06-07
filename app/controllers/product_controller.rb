# frozen_string_literal: true

class ProductController < ApplicationController
  def index
       
    # originally i was going to go with an sql query that would get an average for the ratings however i feel asthough this is an expensive task EVERYTIME the product page loads. I've decided instead to go with adding a column to the products table for which average rating is updated upon every review submission.

    # @products = Product.select('* FROM products p inner join (SELECT product_id, AVG(rating) as avg_rating
    # FROM reviews GROUP BY product_id) as x on p.id = x.product_id ORDER BY x.avg_rating DESC')

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
