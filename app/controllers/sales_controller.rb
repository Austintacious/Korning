class SalesController < ApplicationController
  def index
    @sales = Sale.all.where("sale_date < ?", 3.months.ago).order("sale_date")
  end

  def show
    @sale = Sale.find(params[:id])
  end
end