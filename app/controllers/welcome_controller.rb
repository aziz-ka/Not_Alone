class WelcomeController < ApplicationController
  def index
    @senior = current_user
  end
end
