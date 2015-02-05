class CompaniesController < ApplicationController

    def index
      @companies = Company.all
    end

    def show
      @company = Company.find(params[:id])
    end

    private
    def company_params
       params.require(:company).permit(:name, :suffix, :catch_phrase, :email, :start_date, :product, :industry)
    end
end