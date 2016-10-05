class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.content = params[:content]
    @review.user_id = params[:user_id]
    @review.rating = params[:rating]
    @review.booking_id = params[:booking_id]
    @review.listing_id = params[:listing_id]
    @review.accuracy_rating = params[:accuracy_rating]
    @review.communication_rating = params[:communication_rating]
    @review.cleanliness_rating = params[:cleanliness_rating]
    @review.location_rating = params[:location_rating]
    @review.check_in_rating = params[:check_in_rating]
    @review.value_rating = params[:value_rating]

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.content = params[:content]
    @review.user_id = params[:user_id]
    @review.rating = params[:rating]
    @review.booking_id = params[:booking_id]
    @review.listing_id = params[:listing_id]
    @review.accuracy_rating = params[:accuracy_rating]
    @review.communication_rating = params[:communication_rating]
    @review.cleanliness_rating = params[:cleanliness_rating]
    @review.location_rating = params[:location_rating]
    @review.check_in_rating = params[:check_in_rating]
    @review.value_rating = params[:value_rating]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
