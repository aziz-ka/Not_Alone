class HelpersController < ApplicationController

  def sign_up
    @helper = Helper.new
  end

  def create
    helper = Helper.create(helper_params)
    redirect_to "/helpers/#{helper.id}/profile"
  end

  def profile
    @helper = Helper.find(params[:id])
  end

  def edit
    @helper = Helper.find(params[:id])
  end

  def update
    helper = Helper.find(params[:id])
    helper.update(helper_params)
    redirect_to "/helpers/#{helper.id}/profile"
  end

  def delete
    Helper.delete(params[:id])
    redirect_to "/"
  end

  private

  def helper_params
    params.require(:helper).permit(:name, :email, :address, :phone_number)
  end

end
