class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    if params[:location_id]
      @city = Location.find_by(id: params[:location_id])
      @listings = @city.listings
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :price, :location_id, :category_id, :user_id)
  end

  def set_listing
    @listing = Listing.find_by_id(params[:id])
  end
end
