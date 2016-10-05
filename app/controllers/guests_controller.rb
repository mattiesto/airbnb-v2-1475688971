class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new
    @guest.user_id = params[:user_id]
    @guest.bookmarks = params[:bookmarks]
    @guest.introduction = params[:introduction]

    if @guest.save
      redirect_to "/guests", :notice => "Guest created successfully."
    else
      render 'new'
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])

    @guest.user_id = params[:user_id]
    @guest.bookmarks = params[:bookmarks]
    @guest.introduction = params[:introduction]

    if @guest.save
      redirect_to "/guests", :notice => "Guest updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @guest = Guest.find(params[:id])

    @guest.destroy

    redirect_to "/guests", :notice => "Guest deleted."
  end
end
