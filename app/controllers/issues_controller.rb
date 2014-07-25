class IssuesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @seniors = Senior.all
    @issues = Issue.all
  end

end
