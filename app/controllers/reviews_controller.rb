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
    
    def destroy
        review = Review.find(params[:id])
    if current_user == review.user
      review.destroy
      redirect_to review.product, notice: 'Review was successfully deleted.'
    else
      redirect_to review.product, error: 'Failed to delete review'
    end
  end
    
    private
    def review_params
        params.require(:review).permit(:description, :rating)
    end
    
end
