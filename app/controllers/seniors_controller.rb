class SeniorsController < ApplicationController
  # before_action :authorize, only: [:profile] # no idea what it does
  def sign_up
    @senior = Senior.new
  end
  def create
    @senior = Senior.create(senior_params)
    if @senior.save
      redirect_to "/seniors/profile"
    else
      render 'sign_up'
    end
  end
  def profile
    senior = current_user
    # @senior = Senior.find(params[:id])
  end
  def edit
    # @senior = Senior.find(params[:id])
    @senior = current_user
  end
  def update    
    @senior = current_user
    @senior.update(senior_params)
    if @senior.save
      redirect_to "/seniors/profile"
    else
      render 'edit'
    end
  end
  def delete
    senior = current_user
    redirect_to "/"
  end

  private

  def senior_params
    params.require(:senior).permit(:name, :email, :age, :address, :phone_number, :password, :password_confirmation, :terms)
  end
end
