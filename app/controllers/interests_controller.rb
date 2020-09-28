class InterestsController < ApplicationController
  before_action :initialize_new_client
  before_action :authenticate_user!
  
  def create
    @interest = Interest.new
    @interest.company_symbol = params[:symbol]
    if @interest.save
      redirect_to show_category_path(params[:access_keyword])
    end
  end

  private

  def interests_params
    params.require(:interest).permit(:access_keyword)
  end
end
