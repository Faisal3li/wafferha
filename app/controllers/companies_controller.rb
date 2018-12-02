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
    company = current_user.companies.create(company_params)

    redirect_to company_path(company)
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.find_by(id: params[:id])
    Company.update(company_params)
    redirect_to company_path(company)
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to companies_path
  end

  def company_params
    params.require(:company).permit(:name, :description, :image)
  end
end
