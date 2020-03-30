class ReviewsController < ApplicationController
  def create
    review = Review.create(grade: params[:selector], merits: params[:merits], 
                    demerits: params[:demerits], product_id: params[:product_id], user: current_user)

    redirect_back(fallback_location: root_path)

  end

  def edit
  end

  def destroy
  end
end
