class PurchasesController < ApplicationController

  def create
    @purchase = Purchases.new
    @purchase.company_symbol = params[:symbol]
    if @purchase.save
      redirect_to show_category_path(params[:access_keyword])
    end
  end
end
