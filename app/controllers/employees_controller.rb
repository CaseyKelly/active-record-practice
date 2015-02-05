class EmployeesController < ApplicationController

    def index
      @employees = Employee.all
    end

    def new
      @employee = Employee.new
      @company = Company.find(params[:company_id])
    end

    def create
      @employee = Employee.new(employee_params)
      @employee.company_id = params[:company_id]
      if @employee.save
      redirect_to companies_path
        else
          render @employee
      end
    end

    def show
      @employee = Employee.find(params[:id])
    end

    private
    def employee_params
       params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :title)
    end
end
