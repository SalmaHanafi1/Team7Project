class ReviewsController < ApplicationController
    def create
        @trail = Trail.find(params[:trail_id])
        @review = @trail.reviews.create(review_params)
        redirect_to trail_path(@trail)
    end
    
    private
        def review_params
            params.require(:review).permit(:difficulty, :security, :body)
        end
end
