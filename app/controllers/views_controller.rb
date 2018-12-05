class ViewsController < ApplicationController
    skip_before_action :verify_authenticity_token

  def create
    view = View.create(offer_id: params["offer_id"], user_id: current_user.id)
    render json: view
  end
end
