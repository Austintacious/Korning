class EmployeeProfilesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @employee_sales = Sale.where("employee_id = ?", params[:id]).order("sale_amount DESC")
  end
end