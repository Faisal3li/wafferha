class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    # If a category has been chosen (through a drop down) - this uses something in params
    # Find the category with the name was picked
    # @companies is all of the companies that are associated with the category
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

  def search
  end

  def company_params
    params.require(:company).permit(:name, :description, :image)
  end
end
