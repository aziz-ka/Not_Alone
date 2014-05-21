class SessionsController < ApplicationController

  def new
    # go to log-in form
  end

  def create

    senior = Senior.find_by(email: params[:senior][:email])
    # binding.pry

    if senior && senior.authenticate(params[:senior][:password])
      session[:senior_id] = senior.id
      redirect_to "/seniors/profile", notice: "Signed in as #{senior.email}"
    else
      redirect_to "/sessions/new", alert: 'Log-In Failed'
    end

  end

  def destroy
    session[:senior_id] = nil
    redirect_to "/sessions/new", notice: "Logged-Out"
  end

end
