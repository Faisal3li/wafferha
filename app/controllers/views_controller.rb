class ViewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    view = View.create(offer_id: params["offer_id"], user_id: current_user.id)
    offer = Offer.find_by(id: params["offer_id"])
    render json: offer.views.length
  end
end
