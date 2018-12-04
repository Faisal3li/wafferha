class OffersController < ApplicationController
  def index
    @offers = Offer.where coupon: false
  end

  def coupon
    if !user_signed_in?
      redirect_to new_user_session_path
    elsif !current_user.premium
      render :coupon
    else
      @offers = Offer.where coupon: true
      render :index
    end
  end

  def show
    @offer = Offer.find_by(id: params[:id])
    @place = Place.find_by(id: params[:id])
  end

  def edit
  end

  def new
    # raise
    @offer = Offer.new
  end

  def create
    offer = Offer.create(offer_params)
    # raise
    offer.save

    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_Description, :expired_Date, :start_Date, :image, :coLocation, :company_id)
  end
end
