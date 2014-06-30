class IssuesController < ApplicationController

  # include Webhookable
  # after_filter :set_header
  skip_before_action :verify_authenticity_token

  def index
    # binding.pry

    # @client = Twilio::REST::Client.new account_sid, auth_token
    @seniors = Senior.all
    @issues = Issue.all

  end

end