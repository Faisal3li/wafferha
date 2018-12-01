class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find_by(id: params[:id])
  end

  def edit
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.create(offer_params)
    redirect_to @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_Description, :expired_Date, :start_Date, :image, :coLocation, :view_Count, :coupon, :premium, :used, category_id: [])
  end
end
