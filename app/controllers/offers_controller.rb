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
    @offer = Offer.new(offer_params)
    @offer.save
    redirect_to @offer
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_Description, :expired_Date, :start_Date, :image, :coLocation ,:company_id)
  end
end
