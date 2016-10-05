class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new
    @listing.title = params[:title]
    @listing.room_or_home = params[:room_or_home]
    @listing.description = params[:description]
    @listing.number_of_rooms = params[:number_of_rooms]
    @listing.number_of_bathrooms = params[:number_of_bathrooms]
    @listing.number_of_beds = params[:number_of_beds]
    @listing.max_occupants = params[:max_occupants]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.policies = params[:policies]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]

    if @listing.save
      redirect_to "/listings", :notice => "Listing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.room_or_home = params[:room_or_home]
    @listing.description = params[:description]
    @listing.number_of_rooms = params[:number_of_rooms]
    @listing.number_of_bathrooms = params[:number_of_bathrooms]
    @listing.number_of_beds = params[:number_of_beds]
    @listing.max_occupants = params[:max_occupants]
    @listing.city = params[:city]
    @listing.neighborhood = params[:neighborhood]
    @listing.policies = params[:policies]
    @listing.default_price = params[:default_price]
    @listing.host_id = params[:host_id]

    if @listing.save
      redirect_to "/listings", :notice => "Listing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    redirect_to "/listings", :notice => "Listing deleted."
  end
end
