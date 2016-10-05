class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:id])
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new
    @host.user_id = params[:user_id]

    if @host.save
      redirect_to "/hosts", :notice => "Host created successfully."
    else
      render 'new'
    end
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    @host = Host.find(params[:id])

    @host.user_id = params[:user_id]

    if @host.save
      redirect_to "/hosts", :notice => "Host updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @host = Host.find(params[:id])

    @host.destroy

    redirect_to "/hosts", :notice => "Host deleted."
  end
end
