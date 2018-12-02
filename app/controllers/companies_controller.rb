class CompaniesController < ApplicationController
  def index
    if params[:company]
      if params[:company][:category_id]
        @category = Category.find_by(id: params[:company][:category_id])
        @companies = @category.companies
      end
    else
      @company = Company.new
      @companies = Company.all
    end
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)
    company.category = Category.find(params["company"]["category_id"])
    company.save
    redirect_to companies_path
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

  private

  def company_params
    params.require(:company).permit(:name, :description, :image, :category_id => [])
  end
end
