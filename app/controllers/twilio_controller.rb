class TwilioControllehr < ApplicationController
  def process_sms
    # Find the senior that has sent the text
    senior = Senior.find_by(phone: params["From"])
    # Get the question 
    question = params["Body"]
    # Create the issue 
    issue = Issue.create(question: question)
    # Associate senior with issue 
    senior.issues << issue

  end
end