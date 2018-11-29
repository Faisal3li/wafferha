class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
