class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find_by(id: params[:id])
  end

  def edit
  end

  def create
    # company id
    # category id
    # company = Company.find_by(name: "a")
  end

  def new
    @offer = Offer.new
  end

  def create
    offer = Offers.create(offer_params)
    redirect_to offer_path(offer)
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_Description, :image, :expired_Date, :start_Date, :coLocation, :view_Count, :coupon, :premium, :used, company_ids: [])
  end
end
