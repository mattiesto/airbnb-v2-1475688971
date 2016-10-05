class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.listing_id = params[:listing_id]
    @booking.date = params[:date]
    @booking.price_alternative = params[:price_alternative]
    @booking.guest_id = params[:guest_id]
    @booking.book_yn = params[:book_yn]
    @booking.requests = params[:requests]

    if @booking.save
      redirect_to "/bookings", :notice => "Booking created successfully."
    else
      render 'new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    @booking.listing_id = params[:listing_id]
    @booking.date = params[:date]
    @booking.price_alternative = params[:price_alternative]
    @booking.guest_id = params[:guest_id]
    @booking.book_yn = params[:book_yn]
    @booking.requests = params[:requests]

    if @booking.save
      redirect_to "/bookings", :notice => "Booking updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy

    redirect_to "/bookings", :notice => "Booking deleted."
  end
end
