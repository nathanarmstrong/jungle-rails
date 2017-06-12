class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.product_id = params[:product_id]
        @review.user_id = current_user.id

        if @review.save
            redirect_to @review.product, notice: 'Review created.'
        else
            redirect_to @review.product, notice: 'Failed review.'
        end    
    end
    
    private
    def review_params
        params.require(:review).permit(:description, :rating)
    end
    
end
