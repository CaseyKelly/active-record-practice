class EmployeesController < ApplicationController

    def index
      @employees = Employee.all
    end

    def show
      @employee = Employee.find(params[:id])
    end

    private
    def employee_params
       params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :title)
    end
end
