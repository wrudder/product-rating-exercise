
class ReviewController < ApplicationController
    before_action :set_product, only: [:index, :show]

    def index
      
        #get all reviews with associated product id
      @reviews = Review.where(product_id: show_params[:product_id])
        #if there is no reviews render a error message
      unless @reviews.blank? 
        if params[:sort_by_rating]
             @reviews = @reviews.order("reviews.rating #{sort_by_rating}")
        elsif params[:sort_by_date]
            @reviews = @reviews.order("reviews.created_at #{sort_by_date}")
        else 
            @reviews = @reviews.order("reviews.created_at DESC")
        end
        render json: @reviews, status: :ok
      else 
        render json: {error: "There are no reviews for this product."}
      end
  
    
    end
  
    def show
      @review = Review.find(show_review_params[:id])
  
      render json: @review, status: :ok
    end
  
    private
  
    def show_params
      params.permit(:product_id)
    end

    def show_review_params
        params.permit(:id)
      end

    def set_product
        @product = Product.find_by(id: :product_id)
    end
  end