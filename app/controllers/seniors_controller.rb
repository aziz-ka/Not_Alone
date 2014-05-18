class SeniorsController < ApplicationController
  def sign_up
    @senior = Senior.new
  end
  def create
    @senior = Senior.create(senior_params)
    redirect_to "seniors/#{@senior.id}/profile"
  end
  def profile
  end
  def edit
  end
  def update
  end
  def update
  end
  def delete
  end

  private

  def senior_params
    params.require(:senior).permit(:name, :age, :address, :phone_number)
  end
end
