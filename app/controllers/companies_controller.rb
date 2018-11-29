class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.admin_id = current_user.id
    @comapny.save
    reditect_to @company
  end

  def edit
    @company = Company.find(id: params[:id])
  end

  def destroy
    compnay = Company.find(params[:id])
    company.destroy
    redirect_to companies_path
  end

  def company_params
    params.require(:company).permit(:name, :description)
  end
end
