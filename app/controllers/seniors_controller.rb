class SeniorsController < ApplicationController
  def sign_up
    @senior = Senior.new
  end
  def create
    senior = Senior.create(senior_params)
    redirect_to "/seniors/#{senior.id}/profile"
  end
  def profile
    @senior = Senior.find(params[:id])
  end
  def edit
    @senior = Senior.find(params[:id])
  end
  def update
    senior = Senior.find(params[:id])
    senior.update(senior_params)
    redirect_to "/seniors/#{senior.id}/profile"
  end
  def delete
    senior = Senior.delete(params[:id])
    redirect_to "/"
  end

  private

  def senior_params
    params.require(:senior).permit(:name, :age, :address, :phone_number)
  end
end
