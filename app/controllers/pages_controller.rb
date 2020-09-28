class PagesController < ApplicationController
  before_action :initialize_new_client
  before_action :authenticate_user!
  def home
    @categories = Category.all
    @interest = Interest.all

  end

  def show
    @category = Category.find_by(access_keyword: params[:access_keyword])
    @list_company = @client.stock_market_list(@category.access_keyword.to_sym)
  end 


end
