class Api::V1::BillsController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_bill, only: [:show, :update, :destroy]

  # GET /bills
  def index
    @bills = current_api_user.bills.all

    render json: @bills
  end

  # GET /bills/1
  def show
    render json: @bill
  end

  # POST /bills
  def create
    @bill = current_api_user.bills.new(bill_params)
    @bill.invoice_number = Faker::Barcode.ean(8)
    @bill.status = 'pending'

    if @bill.save
      render json: @bill, status: :created, location: api_bill_url(@bill)
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bills/1
  def update
    if @bill.update(bill_params)
      render json: @bill
    else
      render json: @bill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bills/1
  def destroy
    @bill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = current_api_user.bills.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bill_params
      params.require(:bill).permit(:invoice_number, :due_date, :description, :status,
                                   bill_items_attributes: [:id, :name, :quantity, :price, :total, :bill_id, :_destroy])
    end
end
