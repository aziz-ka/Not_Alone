class IssuesController < ApplicationController

  # include Webhookable
  # after_filter :set_header
  skip_before_action :verify_authenticity_token

  def index
    # binding.pry

    # account_sid = "AC877d12a6bed8d852b0e3e70ff65cf3e7"
    # auth_token = "863d16e53b9c49c90a53885af77af078"
    # @client = Twilio::REST::Client.new account_sid, auth_token
    @seniors = Senior.all
    @issues = Issue.all

  end

end