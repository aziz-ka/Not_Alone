class SeniorsController < ApplicationController
  # before_action :authorize, only: [:profile]
  def sign_up
    @senior = Senior.new
  end
  def create
    senior = Senior.create(senior_params)
    redirect_to "/seniors/profile"
  end
  def profile
    senior = current_user
    # @senior = Senior.find(params[:id])
  end
  def edit
    # @senior = Senior.find(params[:id])
    senior = current_user
  end
  def update
    senior = current_user
    senior.update(senior_params)
    redirect_to "/seniors/profile"
  end
  def delete
    senior = current_user
    redirect_to "/"
  end

  private

  def senior_params
    params.require(:senior).permit(:name, :email, :age, :address, :phone_number, :password, :password_confirmation)
  end
end
